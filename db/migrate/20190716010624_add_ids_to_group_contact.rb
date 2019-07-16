class AddIdsToGroupContact < ActiveRecord::Migration[6.0]
  def change
    add_column :group_contacts, :group_id, :integer
    add_column :group_contacts, :contact_id, :integer
  end
end
