include ApplicationHelper
###
# rails g scaffold Person name:string cpf:string rg:string birthday:date place_birth:string nationality:string gender:string email:string
# rails g scaffold Address person:references cep:string street:string number:string neighborhood:string city:string state:string country:string complement:string
# rails g scaffold Voter_data person:references number:string zone:string section:string
# rails g scaffold Parents person:references mother:string father:string
# rails g scaffold Blood person:references group:string type:string rh:string
# rails g scaffold Military_data person:references general_register:string into_register:string level:string
# rails g scaffold Level name:string sign:string type:string code_type:string raking:integer
# rails g scaffold Phone person:references number:string type:string maind:boolean


puts "Creating People"
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
puts "Created " + Person.count.to_s + " people!"
<<-DOC
@people = Person.all

puts "Creating Address"
@people.each do |p|	
	Address.create!(
        person: Person.find(p.id),
        cep: Faker::Address.postcode,
        street: Faker::Address.street_name,
        number: Faker::Address.building_number,
        neighborhood: Faker::Name.name_with_middle,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country: Faker::Address.country,
        complement: Faker::Address.secondary_address
    )
end
puts "Created " + Address.count.to_s " addresses!"

puts "Creating Voter Data"
@people.each do |p|
    VoterDatum.create!(
        person: Person.find(p.id),
        number: ApplicationHelper::code_string_generator(12),
        zone: ApplicationHelper::code_string_generator(3),        
        section: ApplicationHelper::code_string_generator(3)
    )
end
puts "Created " + VoterDatum.count.to_s + " Voters Data!"

puts "Creating Parents on " + @people.count.to_s + " People" 
@people.each do |p|
    Parent.create!(
        person: Person.find(p.id),
        mother: Faker::Name.female_first_name,
        father: Faker::Name.male_first_name
    )
end
puts "Created " + Parent.count.to_s + " Parents!"
    

puts "Creating Blood on " + @people.count.to_s + " People" 
@people.each do |p|
    Blood.create!(
        person: Person.find(p.id),
        group: Faker::Blood.group,
        type: Faker::Blood.type,
        rh: Faker::Blood.rh_factor
    )
end
puts "Created " + Blood.count.to_s + " Blood Data!"
DOC