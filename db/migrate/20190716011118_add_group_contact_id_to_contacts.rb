class AddGroupContactIdToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :group_contact_id, :integer 
  end
end
