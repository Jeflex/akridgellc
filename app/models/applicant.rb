class Applicant < ApplicationRecord
  searchable do
    text :firstname, :lastname, :email
  end
end
