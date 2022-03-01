class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :player_one, null: false, foreign_key: { to_table: :players }
      t.references :player_two, null: false, foreign_key: { to_table: :players }
      t.references :winner, null: false, foreign_key: { to_table: :players }

      t.timestamps
    end
  end
end
