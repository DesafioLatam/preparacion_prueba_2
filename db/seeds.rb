# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.destroy_all
Category.destroy_all

3.times do |i|
  c = Category.new(name: "Cat #{i}")
  c.products.build(name: "Producto #{i}-1", price: 100, premium:true)
  c.products.build(name: "Producto #{i}-2", price: 200, premium:false)
  c.save!
end
