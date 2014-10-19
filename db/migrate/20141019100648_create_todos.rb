class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string  :title
      t.text    :description
      t.boolean :done
      t.integer :priority
      t.time    :time_from
      t.time    :time_to
      t.timestamps
    end
  end
end
