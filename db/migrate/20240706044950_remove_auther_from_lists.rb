class RemoveAutherFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :auther, :string
  end
end
