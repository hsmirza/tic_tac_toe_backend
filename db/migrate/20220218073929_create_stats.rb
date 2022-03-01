class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :win
      t.integer :loss
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
