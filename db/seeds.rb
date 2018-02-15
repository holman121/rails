# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Order.destroy_all
Company.destroy_all
Product.destroy_all

50.times do

  company = Company.create(
      name: Faker::Company.name,
      phone: Faker::Company.australian_business_number,
      email: Faker::Internet.email,
      address: Faker::Address.street_address
  )

  company.products.create(
      name: Faker::Commerce.product_name,
      price: Faker::Number.decimal(2,2),
      stock_quantity: Faker::Number.number(2)
  )

  company.products.create(
      name: Faker::Commerce.product_name,
      price: Faker::Number.decimal(2,2),
      stock_quantity: Faker::Number.number(2)
  )

  customer = Customer.create(
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              address: Faker::Address.street_address,
              city: Faker::Address.city,
              country:Faker::Address.country,
              post_code: Faker::Address.postcode
  )

  customer.order.create(
      title: Faker::Commerce.product_name,
      description: Faker::Commerce.material,
      quantity: Faker:: Number.number(2),
      price: Faker:: Number.decimal(2,2)
  )

  customer.order.create(
      title: Faker::Commerce.product_name,
      description: Faker::Commerce.material,
      quantity: Faker:: Number.number(2),
      price: Faker:: Number.decimal(2,2)
  )

end

puts Customer.count