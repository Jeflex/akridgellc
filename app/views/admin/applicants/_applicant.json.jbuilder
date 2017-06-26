json.extract! applicant, :id, :firstname, :lastname, :telephone, :email, :address, :landlord, :landlordnum, :employer, :employername, :employernum, :income, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
