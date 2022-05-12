class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :name
      t.boolean :open
      t.float :rating

      t.timestamps
    end
  end
end
