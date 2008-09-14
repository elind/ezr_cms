class CreateEzrContentClassAttributes < ActiveRecord::Migration
  def self.up
    create_table :ezr_content_class_attributes do |t|
      t.string :identifier
      t.string :display_name
      t.integer :ezr_content_class_id
      t.string :atype

      t.timestamps
    end
    directory = File.join(File.dirname(__FILE__), "../../test/fixtures" )
    Fixtures.create_fixtures(directory, "ezr_content_class_attributes" )
  end

  def self.down
    drop_table :ezr_content_class_attributes
  end
end
