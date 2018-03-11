class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staffid
      t.string :name
      t.date :dob
      t.text :laddress
      t.string :lphone
      t.text :address
      t.string :pphone
      t.string :mobile
      t.string :email
      t.date :doj
      t.string :bid
      t.integer :designation
      t.text :qualification
      t.integer :priority
      t.text :nrpjc
      t.string :gender
      t.string :status
      t.string :path
      t.string :profile

      t.timestamps null: false
    end
  end
end
