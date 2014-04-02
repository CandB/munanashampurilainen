class RenamePublisherIdColumnInReferenceTable < ActiveRecord::Migration
  def change
    rename_column :references, :in_proceedings_id, :in_proceeding_id
  end
end
