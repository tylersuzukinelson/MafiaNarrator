class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.references :user, index: true, null: false
      t.references :user_role, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :targets, :users
    add_foreign_key :targets, :user_roles
  end
end
