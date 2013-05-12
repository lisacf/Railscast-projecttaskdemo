# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(name: 'Breakfast')
Project.create(name: 'Brunch')
Project.create(name: 'Lunch')
Project.create(name: 'Snack')
Project.create(name: 'Dinner')
Project.create(name: 'Dessert')

Task.create(name: 'Buy milk', project_id:1, complete:false)
Task.create(name: 'Buy eggs', project_id:1, complete:false)
Task.create(name: 'Buy muffins', project_id:1, complete:false)
Task.create(name: 'Buy brocolli', project_id:5, complete:true)
Task.create(name: 'Buy chocolate', project_id:6, complete:false)
Task.create(name: 'Buy bread', project_id:2, complete:false)
Task.create(name: 'Buy coffee', project_id:3, complete:false)

Comment.create(content: 'Safeway has milk at $5.50 vs Walgreens', task_id:1)