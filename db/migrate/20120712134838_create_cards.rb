class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :side_a
      t.text :side_b

      t.timestamps
    end
  end
end
