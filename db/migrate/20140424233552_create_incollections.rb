class CreateIncollections < ActiveRecord::Migration
  def change
    create_table :incollections do |t|
      t.string :author
      t.string :title
      t.integer :year
      t.string :booktitle
      t.string :publisher

      t.timestamps
    end
  end
end
