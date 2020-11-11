class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|

      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :password
      t.string :email

    end
  end
end
