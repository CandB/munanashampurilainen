class DropUselessTable < ActiveRecord::Migration
  def change
    drop_table :in_proceedings_publishers
  end
end
