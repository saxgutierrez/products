# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name:"Peinilla" ,price: 1000)

Category.create(name:"Perfumes")
Category.create(name:"Libros")
Category.create(name:"Tecnología")
Category.create(name:"Aseo")
Category.create(name:"Juguetes")
Category.create(name:"ropa")
Category.create(name:"Oficina")
Category.create(name:"Mascotas")



#ejemplo de consola para modelos
#product1 = Product.first
#category1 = Category.first
#category2 = Category.find(4)
#category3 = Category.find(6)
#product1.categories << category1
#product1.categories << category2
#product1.categories << category3

#ejemplo de consola para tabla intermedia o join table
#product1 = Product.create(name:"Peinilla" ,price: 1000)
#product1.category_ids = [4,6]
#product1.categories