class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.text :firstname
      t.text :lastname
      t.integer :telephone
      t.string :email
      t.string :address
      t.string :landlord
      t.integer :landlordnum
      t.string :employer
      t.string :employername
      t.integer :employernum
      t.decimal :income

      t.timestamps
    end
  end
end
