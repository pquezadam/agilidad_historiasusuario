# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all


10.times do |i|
    temp_user = User.create(
        name: "usuario#{i}",
        password: '123456',
        password_confirmation: '123456',
        email: "usuario#{i}@desafio.cl"
    )
    Product.create(
        name: "Producto#{i+1}",
        price: 10*(i+1),
        description: "descripcion del producto #{i+1}",
        photo: "http://lorempixel.com/400/200/sports #{i+1}",
        sold: false,
        user_id: temp_user   
    )
end