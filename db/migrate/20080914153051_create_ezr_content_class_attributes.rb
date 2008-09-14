class CreateEzrContentClassAttributes < ActiveRecord::Migration
  def self.up
    create_table :ezr_content_class_attributes do |t|
      t.string :identifier
      t.string :display_name
      t.integer :content_class_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ezr_content_class_attributes
  end
end
