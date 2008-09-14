class CreateEzrContentObjectAttributes < ActiveRecord::Migration
  def self.up
    create_table :ezr_content_object_attributes do |t|
      t.integer :content_class_attribute_id
      t.string :identifier
      t.string :display_name
      t.string :atype
      t.integer :ezr_content_object_id
      t.integer :int_value
      t.float :float_value
      t.string :string_value
      t.text :text_value

      t.timestamps
    end
    directory = File.join(File.dirname(__FILE__), "../../test/fixtures" )
    Fixtures.create_fixtures(directory, "ezr_content_object_attributes" )
  end

  def self.down
    drop_table :ezr_content_object_attributes
  end
end
