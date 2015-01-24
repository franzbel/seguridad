# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Result.create(:name=>"paternidad", :description=>"positivo", :user_id=>1)
Result.create(:name=>"colesterol", :description=>"10%", :user_id=>1)
Result.create(:name=>"nivel de sodio", :description=>"10%", :user_id=>1)
Result.create(:name=>"globulos rojos", :description=>"10%", :user_id=>1)

Result.create(:name=>"paternidad", :description=>"positivo", :user_id=>2)
Result.create(:name=>"colesterol", :description=>"20%", :user_id=>2)
Result.create(:name=>"nivel de sodio", :description=>"20%", :user_id=>2)
Result.create(:name=>"globulos rojos", :description=>"20%", :user_id=>2)

Result.create(:name=>"paternidad", :description=>"positivo", :user_id=>3)
Result.create(:name=>"colesterol", :description=>"30%", :user_id=>3)
Result.create(:name=>"nivel de sodio", :description=>"30%", :user_id=>3)
Result.create(:name=>"globulos rojos", :description=>"30%", :user_id=>3)

