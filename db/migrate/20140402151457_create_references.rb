class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :author_id
      t.integer :in_proceedings_id

      t.timestamps
    end
  end
end
