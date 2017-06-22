class ChangeApplicants < ActiveRecord::Migration[5.1]
  def change
    change_column :applicants, :lastname, :string
    change_column :applicants, :firstname, :string
  end
end
