class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :specialty, :string
  end
end
