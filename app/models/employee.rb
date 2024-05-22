class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :personal_email, uniqueness: true, presence: true
    validates :city, :state, :country, :pincode, :address_line_1, presence: true
end
