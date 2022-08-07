# frozen_string_literal: true

# AddAttachmentImageToPins migration class
class AddAttachmentImageToPins < ActiveRecord::Migration[4.2]
  def up
    add_column :pins, :image_file_name, :string
    add_column :pins, :image_file_size, :integer
    add_column :pins, :image_content_type, :string
    add_column :pins, :image_updated_at, :datetime
  end

  def down
    remove_column :pins, :image_file_name, :string
    remove_column :pins, :image_file_size, :integer
    remove_column :pins, :image_content_type, :string
    remove_column :pins, :image_updated_at, :datetime
  end
end
