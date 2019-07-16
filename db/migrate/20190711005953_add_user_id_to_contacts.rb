class AddUserIdToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :user_id, :string
    add_column :contacts, :integer, :string
  end
end
