class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :rarity
      t.string :desc
      t.string :imageurl
      t.integer :dlc

      t.timestamps
    end
  end
end
