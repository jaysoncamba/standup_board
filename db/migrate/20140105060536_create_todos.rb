class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :ticket
      t.string :title
      t.text :description
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
