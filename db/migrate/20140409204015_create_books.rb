class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :editor
      t.string :title
      t.string :publisher
      t.string :year

      t.timestamps
    end
  end
end
