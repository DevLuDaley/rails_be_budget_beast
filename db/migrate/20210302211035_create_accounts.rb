class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :available_credit
      t.decimal :balance
      t.decimal :total_credit
      t.decimal :apr

      t.timestamps
    end
  end
end
