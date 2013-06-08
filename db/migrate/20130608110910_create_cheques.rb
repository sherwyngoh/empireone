class CreateCheques < ActiveRecord::Migration
  def change
    create_table :cheques do |t|
      t.string :sender
      t.string :recipient
      t.decimal :amount
      t.boolean :cross

      t.timestamps
    end
  end
end
