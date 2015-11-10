class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.belongs_to :user
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
