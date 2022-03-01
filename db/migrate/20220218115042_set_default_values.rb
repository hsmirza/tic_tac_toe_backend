class SetDefaultValues < ActiveRecord::Migration[6.1]
  def change
    change_column :stats, :win, :integer, default: 0
    change_column :stats, :loss, :integer, default: 0
    change_column :players, :name, :string, null: false
  end
end
