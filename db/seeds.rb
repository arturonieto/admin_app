# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create(email: "primer_empleado@mail.com", password: "12345", role: 1, id: 2)
Employee.create(user_id: 2, first_name: "Rodrigo", last_name: "Velazquez", id: 1)
Record.create(employee_id: 1, check_in: "Jan 1 2018 09:10", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 2 2018 09:10", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 3 2018 09:10", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 4 2018 09:10", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 5 2018 09:10", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 6 2018 09:10", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 7 2018 09:10", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 8 2018 09:10", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 1, check_in: "Jan 9 2018 09:10", check_out: "Jan 9 2018 17:15")

User.create(email: "segundo_empleado@mail.com", password: "12345", role: 1, id: 3)
Employee.create(user_id: 3, first_name: "Fernando", last_name: "Hernández", id: 2)
Record.create(employee_id: 2, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 2, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")


User.create(email: "tercer_empleado@mail.com", password: "12345", role: 1, id: 4)
Employee.create(user_id: 4, first_name: "Juan Antonio", last_name: "Pérez", id: 3)
Record.create(employee_id: 3, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 3, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")

User.create(email: "cuarto_empleado@mail.com", password: "12345", role: 1, id: 5)
Employee.create(user_id: 5, first_name: "Goku", last_name: "Kakaroto Catena", id: 4)
Record.create(employee_id: 4, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 4, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")

User.create(email: "quinto_empleado@mail.com", password: "12345", role: 1, id: 6)
Employee.create(user_id: 6, first_name: "Fernando Havier", last_name: "Gallardo", id: 5)
Record.create(employee_id: 5, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 5, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")

User.create(email: "sexto_empleado@mail.com", password: "12345", role: 1, id: 7)
Employee.create(user_id: 7, first_name: "Logan", last_name: "Paul Hernandez", id: 6)
Record.create(employee_id: 6, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 6, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")

User.create(email: "septimo_empleado@mail.com", password: "12345", role: 1, id: 8)
Employee.create(user_id: 8, first_name: "Peter", last_name: "Parker Gohan", id: 7)
Record.create(employee_id: 7, check_in: "Jan 1 2018 09:08", check_out: "Jan 1 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 2 2018 09:20", check_out: "Jan 2 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 3 2018 09:30", check_out: "Jan 3 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 4 2018 09:08", check_out: "Jan 4 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 5 2018 09:08", check_out: "Jan 5 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 6 2018 09:08", check_out: "Jan 6 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 7 2018 09:08", check_out: "Jan 7 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 8 2018 09:08", check_out: "Jan 8 2018 17:15")
Record.create(employee_id: 7, check_in: "Jan 9 2018 09:08", check_out: "Jan 9 2018 17:15")
