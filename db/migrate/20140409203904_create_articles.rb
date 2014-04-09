class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :journal
      t.string :year

      t.timestamps
    end
  end
end
