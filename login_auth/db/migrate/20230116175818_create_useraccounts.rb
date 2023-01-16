class CreateUseraccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :useraccounts do |t|

      t.timestamps
    end
  end
end
