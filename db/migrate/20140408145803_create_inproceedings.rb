class CreateInproceedings < ActiveRecord::Migration
  def change
    create_table :inproceedings do |t|
      t.string :author
      t.string :title
      t.string :booktitle
      t.string :year

      t.timestamps
    end
  end
end
