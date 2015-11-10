class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :avatar
      t.string :about
      t.string :password
      t.string :email
      t.string :major
      t.string :sid
      t.string :type
      t.string :courses
      t.string :officeHour
      t.string :department
      t.string :office
      t.timestamps null: false
    end
  end
end
