class CreateInProceedings < ActiveRecord::Migration
  def change
    create_table :in_proceedings do |t|
      t.string :title
      t.string :booktitle
      t.integer :year

      t.timestamps
    end
  end
end
