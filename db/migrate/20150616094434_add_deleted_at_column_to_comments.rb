class AddDeletedAtColumnToComments < ActiveRecord::Migration
  def change
    add_column :comments, :deleted_at, :boolean, default: false
  end
end
