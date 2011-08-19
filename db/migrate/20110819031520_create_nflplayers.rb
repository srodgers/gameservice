class CreateNflplayers < ActiveRecord::Migration
  def self.up
    create_table :nflplayers do |t|
      t.string :name
      t.string :position
      t.string :picurl
      t.string :wk1opp
      t.string :wk2opp
      t.string :wk3opp
      t.string :wk4opp
      t.string :wk5opp
      t.string :wk6opp
      t.string :wk7opp
      t.string :wk1field
      t.string :wk2field
      t.string :wk3field
      t.string :wk4field
      t.string :wk5field
      t.string :wk6field
      t.string :wk7field
      t.string :team
      t.integer :wk1points
      t.integer :wk2points
      t.integer :wk3points
      t.integer :wk4points
      t.integer :wk5points
      t.integer :wk6points
      t.integer :wk7points

      t.timestamps
    end
  end

  def self.down
    drop_table :nflplayers
  end
end
