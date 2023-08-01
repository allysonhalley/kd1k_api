include ApplicationHelper
###
# rails g scaffold Person name:string cpf:string rg:string birthday:date place_birth:string nationality:string gender:string email:string
# rails g scaffold Address person:references cep:string street:string number:string neighborhood:string city:string state:string country:string complement:string
# rails g scaffold Voter_data person:references number:string zone:string section:string
# rails g scaffold Parents person:references mother:string father:string
# rails g scaffold Blood person:references group:char rh:string
# rails g scaffold Military_data person:references general_register:string into_register:string level:string
# rails g scaffold Level name:string sign:string type:string code_type:string raking:integer
# rails g scaffold Phone person:references number:string type:string maind:boolean

10.times do |i|
	
	Person.create!(
		name: Faker::Name.name,
		cpf: ApplicationHelper::code_string_generator(11),
		rg: ApplicationHelper::code_string_generator(14),
		birthday: Faker::Date.birthday(min_age: 18, max_age: 120),
        place_birth: Faker::Address.city,
        nationality: Faker::Address.country,
        gender: Faker::Gender.short_binary_type,
		email: Faker::Internet.email
	)
end
puts "Created 10 people!"