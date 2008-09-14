class CreateEzrContentClasses < ActiveRecord::Migration
  def self.up
    create_table :ezr_content_classes do |t|
      t.string :identifier
      t.string :display_name

      t.timestamps
    end
  end

  def self.down
    drop_table :ezr_content_classes
  end
end
