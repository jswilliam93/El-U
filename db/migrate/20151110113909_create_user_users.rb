class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.belongs_to :user1, :class_name =>"User", :foreign_key =>"Follower"
      t.belongs_to :user2, :class_name =>"User", :foreign_key =>"Followed"
      t.timestamps null: false
    end
  end
end
