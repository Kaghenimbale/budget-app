class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.bigint :amount
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
