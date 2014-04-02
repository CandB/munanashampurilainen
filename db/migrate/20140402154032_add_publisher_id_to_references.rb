class AddPublisherIdToReferences < ActiveRecord::Migration
  def change
    add_column :references, :publisher_id, :integer
  end
end
