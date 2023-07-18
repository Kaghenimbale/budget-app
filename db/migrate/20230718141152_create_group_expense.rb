class CreateGroupExpense < ActiveRecord::Migration[7.0]
  def change
    create_table :group_expenses, id: false do |t|
      t.references :group, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end

    add_index :group_expenses, [:expense_id, :group_id]
    add_index :group_expenses, [:group_id, :expense_id]
  end
end
