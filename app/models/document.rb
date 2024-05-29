class Document < ApplicationRecord
  DOC_TYPES = ['Marksheet', 'Aadhar Card', 'PAN Card', 'Driving License', 'Passport', 'Voter ID', 'Other'].freeze
  belongs_to :employee
  validates :name, :doc_type, presence: true
end
