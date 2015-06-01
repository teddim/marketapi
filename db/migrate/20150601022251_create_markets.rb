class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :fmid
      t.string :marketname
      t.string :website
      t.string :street
      t.string :city
      t.string :county
      t.string :state

      t.integer :zip

      t.string :season1date
      t.string :season1time
      t.string :season2date
      t.string :season2time
      t.string :season3date
      t.string :season3time
      t.string :season4date
      t.string :season4time

      t.float :x
      t.float :y

      t.string :location

      t.boolean :credit
      t.boolean :wic
      t.boolean :wiccash
      t.boolean :sfmnp
      t.boolean :snap
      t.boolean :bakedgoods
      t.boolean :cheese
      t.boolean :crafts
      t.boolean :flowers
      t.boolean :eggs
      t.boolean :seafood
      t.boolean :herbs
      t.boolean :vegetables
      t.boolean :honey
      t.boolean :jams
      t.boolean :maple
      t.boolean :meat
      t.boolean :nursery
      t.boolean :nuts
      t.boolean :plants
      t.boolean :poultry
      t.boolean :prepared
      t.boolean :soap
      t.boolean :trees
      t.boolean :wine

      t.datetime :updatedtime
    end
  end
end
