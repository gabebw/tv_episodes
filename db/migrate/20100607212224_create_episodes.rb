class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.string :name
      t.integer :season
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
