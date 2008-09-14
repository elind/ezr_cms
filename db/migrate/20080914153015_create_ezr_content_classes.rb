class CreateEzrContentClasses < ActiveRecord::Migration
  def self.up
    create_table :ezr_content_classes do |t|
      t.string :identifier
      t.string :display_name

      t.timestamps
    end
    directory = File.join(File.dirname(__FILE__), "../../test/fixtures" )
    Fixtures.create_fixtures(directory, "ezr_content_classes" )
  end

  def self.down
    drop_table :ezr_content_classes
  end
end
