class CreateGroupContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :group_contacts do |t|

      t.timestamps
    end
  end
end
