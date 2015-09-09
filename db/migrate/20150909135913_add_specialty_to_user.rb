class AddSpecialtyToUser < ActiveRecord::Migration
  def change
    add_column :users, :specialty, :string
  end
end
