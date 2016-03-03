class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.references :user, index: true
      t.references :role, index: true
      t.references :game, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_roles, :users
    add_foreign_key :user_roles, :roles
    add_foreign_key :user_roles, :games
  end
end
