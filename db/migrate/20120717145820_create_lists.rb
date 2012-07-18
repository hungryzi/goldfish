class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name

      t.timestamps
    end

    create_table :cards_lists do |t|
      t.integer :card_id
      t.integer :list_id
    end
  end
end
