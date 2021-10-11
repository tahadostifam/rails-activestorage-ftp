class AddAttachmentImageToPosts < ActiveRecord::Migration[6.1]
  def up
    # add_column :posts, :image
    add_column :posts, :image_file_name, :string
    add_column :posts, :image_file_size, :integer
    add_column :posts, :image_content_type, :string
    add_column :posts, :image_updated_at, :datetime
  end

  def down
    # remove_column :posts, :image
    remove_column :posts, :image_file_name, :string
    remove_column :posts, :image_file_size, :integer
    remove_column :posts, :image_content_type, :string
    remove_column :posts, :image_updated_at, :datetime
  end
end