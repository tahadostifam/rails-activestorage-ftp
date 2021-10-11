class Post < ApplicationRecord
    has_attached_file :image, styles: { generail: "800x500>", medium: "300x300>", thumb: "100x100>" }

    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
    has_attached_file :image, {
        :storage => :ftp,

        :path => "/htdocs/:attachment/:id/:style/:filename",

        :url => "http://ftpserver-address/:attachment/:id/:style/:filename",

        :ftp_servers => [
            {
                :host => "",
                :user => "",
                :password => "",
                :passive => true
            }
        ],

        :ftp_ignore_failing_connections => true
    }
end