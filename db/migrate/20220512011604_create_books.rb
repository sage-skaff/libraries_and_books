class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.integer :pages
      t.boolean :checked_out

      t.timestamps
    end
  end
end
