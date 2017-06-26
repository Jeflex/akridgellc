class ChangeApplicantType < ActiveRecord::Migration[5.1]
  def change
    change_column :applicants, :telephone, :string
    change_column :applicants, :landlordnum, :string
    change_column :applicants, :employernum, :string
    change_column :applicants, :income, :string

  end
end


# t.integer :telephone
# t.integer :landlordnum
# t.integer :employernum
# t.decimal :income
