# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cuentas = Account.create([
    {:accountid => '0017500000GA9E4AAL', :status => 'Validacion Completa', :dni => '71903170', :nombres => 'Elvis Lazaro', :apellido_paterno => 'Espinoza', :apellido_materno => 'Camargo', :birthdate => '1990-07-05', :tup_dni => '71903170', :tup_nombres => 'Elvis Lazaro', :tup_apellido_paterno => 'Espinoza', :tup_apellido_materno => 'Camargo', :tup_birthdate => '1994-07-05'},
    {:accountid => '0017500000GH9E2CDK', :status => '', :dni => '', :nombres => '', :apellido_paterno => '', :apellido_materno => '', :birthdate => '', :tup_dni => '73030123', :tup_nombres => 'Carlos Hernan', :tup_apellido_paterno => 'Lurita', :tup_apellido_materno => 'Paredes', :tup_birthdate => '1990-10-10'},
    {:accountid => '0017500000GJ9E5AZL', :status => 'Validacion Error', :dni => '', :nombres => '', :apellido_paterno => '', :apellido_materno => '', :birthdate => '', :tup_dni => '74040123', :tup_nombres => 'Andres Alexander', :tup_apellido_paterno => 'Garcia', :tup_apellido_materno => 'Garcia', :tup_birthdate => '1990-11-11'}
    ])