# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:"otto", email:"a@a.com", password:"123")

Product.create(codigo_unico: 'aaa123456', descripcion: 'a', detalle: 'a')
Product.create(codigo_unico: 'bbb123456', descripcion: 'b', detalle: 'b')
Product.create(codigo_unico: 'ccc123456', descripcion: 'c', detalle: 'c')

p1 = Product.first
p1.items.create(price: 1)
p1.items.create(price: 2)

#Client.create(cuil_cuit: 'asdsad', nombre_rs: 'tche', email: 'z@z.com')
