# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "apple", price: "2", image_url: "www.apple.com", description: "red apples")
product.save
product = Product.new(name: "banana", price: "1", image_url: "www.banana.com", description: "yellow bananas")
product.save
product = Product.new(name: "pear", price: "3", image_url: "www.pear.com", description: "green pears")
product.save
product = Product.new(name: "coconut", price: "4", image_url: "www.coconut.com", description: "green coconuts")
product.save