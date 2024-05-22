# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

employee = Employee.create(
    first_name: 'Ram',
    last_name: 'Ram',
    personal_email: 'amanasrani1712@gmail.com',
    city: 'Alwar',
    state: 'Rajasthan',
    country: 'India',
    pincode: '301004',
    address_line_1: 'Khairthal',
)

employee = Employee.new(
    first_name: 'Radhe',
    last_name: 'Krishna',
    personal_email: 'amanasrani@gmail.com',
    city: 'Alwar',
    state: 'Rajasthan',
    country: 'India',
    pincode: '301004',
    address_line_1: 'Khairthal',
)


employee.save
