class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :firstname
      t.string :lastname
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
    change_column :applicants, :lastname, :string
    change_column :applicants, :firstname, :string
  end
end
