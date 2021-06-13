class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :completed
      t.string :boolean

      t.timestamps
    end
  end
end
