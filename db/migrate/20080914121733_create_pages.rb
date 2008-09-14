require 'active_record/fixtures'

class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :name
      t.integer :book_id

      t.timestamps
    end

    directory = File.join(File.dirname(__FILE__), "../../test/fixtures" )
    Fixtures.create_fixtures(directory, "pages" )
  end

  def self.down
    drop_table :pages
  end
end
