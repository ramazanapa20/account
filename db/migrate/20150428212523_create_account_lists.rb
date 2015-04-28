class CreateAccountLists < ActiveRecord::Migration
  def change
    create_table :account_lists do |t|
      t.string :gelirlerim
      t.string :giderlerim

      t.timestamps null: false
    end
  end
end
