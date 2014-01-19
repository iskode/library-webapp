class AddFieldsToSubscriber < ActiveRecord::Migration
  def change
    add_column :subscribers, :name, :string
    add_column :subscribers, :profession, :string
  end
end
