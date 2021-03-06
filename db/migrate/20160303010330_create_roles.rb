class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :type, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :roles, :types
  end
end
