# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rol.create(nombre: "admin")
Rol.create(nombre: "gerente")
Rol.create(nombre: "rrhh")
Rol.create(nombre: "vendedor")
Rol.create(nombre: "almacenista")
User.create(email: "admin@admin", username: "administrador", password: "000000", password_confirmation: "000000", rol_id: "1")
User.create(email: "notadmin@notadmin", username: "noadministrador", password: "111111", password_confirmation: "111111", rol_id: "2")
