# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



project_owner = User.create!(email_address: 'test123+owner@project.com', password: 'password')
user = User.create!(email_address: 'test321+user@project.com', password: 'password')

project1 = Project::Project.create(
  name: 'Test Project 1',
  description: 'This is a test project',
  created_by: user,
  owner: project_owner
)

project2 = Project::Project.create(
  name: 'Test Project 2',
 description: 'This is a test project',
 created_by: user,
 owner: project_owner
                        )


project1.comments << Project::Comment.create(text: 'This is a comment for the project 1 1', created_by: user)
project1.comments << Project::Comment.create(text: 'This is a comment for the project 1 2', created_by: project_owner)

project2.comments << Project::Comment.create(text: 'This is a comment for the project 2 3', created_by: user)
project2.comments << Project::Comment.create(text: 'This is a comment for the project 2 4', created_by: project_owner)
