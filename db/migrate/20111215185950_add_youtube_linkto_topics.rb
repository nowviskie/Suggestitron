class AddYoutubeLinktoTopics < ActiveRecord::Migration
  def up
    change_table :topics do |table|
      table.string :url
    end
  end

  def down
    remove_column :topics, :url
  end
end
