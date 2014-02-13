class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :profession, :string
  end
end
