# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


activities = Activity.create([{ name: 'Basic Cut - Men', price: 35},{ name: 'Basic Cut - Women', price: 30},
                             { name: 'Basic Cut - Children', price: 25},{ name: 'Coloring', price: 35},
                              { name: 'Chemical Blowdry', price: 20}])



employees = Employee.create([{ first_name: 'Susan', last_name: 'Williams' },  {first_name: 'Desmond', last_name: 'Barber' }, {first_name: 'Ro', last_name: 'Baker' }])



timeslots = Timeslot.create([{ start_time: '8:00', end_time:'8:30'},{ start_time: '8:30', end_time:'9:00'},
                             { start_time: '9:00', end_time:'9:30'},{ start_time: '9:30', end_time:'10:00'},
                             { start_time: '10:00', end_time:'10:30'},{ start_time: '10:30', end_time:'11:00'},
                             { start_time: '11:00', end_time:'11:30'},{ start_time: '11:30', end_time:'12:00'},
                             { start_time: '12:00', end_time:'12:30'},{ start_time: '12:30', end_time:'13:00'},
                             { start_time: '13:00', end_time:'13:30'},{ start_time: '13:30', end_time:'14:00'},
                             { start_time: '14:00', end_time:'14:30'},{ start_time: '14:30', end_time:'15:00'},
                             { start_time: '15:00', end_time:'15:30'},{ start_time: '15:30', end_time:'16:00'},
                             { start_time: '16:00', end_time:'16:30'},{ start_time: '16:30', end_time:'17:00'},
                             { start_time: '17:00', end_time:'17:30'},{ start_time: '17:30', end_time:'18:00'},])

appointments = Appointment.create([{ customer_name: 'Brandon Rogers', timeslot: timeslots.second, date: '2017-04-06', employee: employees.first, activity: activities.first },
                                   { customer_name: 'Lisa Sampsom', timeslot: timeslots.fifth, date: '2017-04-14', employee: employees.second, activity: activities.second },
                                   { customer_name: 'Darren Chambers', timeslot: timeslots.first, date: '2017-04-19', employee: employees.first, activity: activities.third },
                                   { customer_name: 'Chloe Maxwell', timeslot: timeslots.fourth , date: '2017-04-23', employee: employees.third, activity: activities.fourth }])