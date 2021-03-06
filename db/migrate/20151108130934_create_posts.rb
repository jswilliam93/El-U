class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.string :text
      t.string :tag
      t.boolean :announcment, default: false
      t.timestamps null: false
    end
  end
end
