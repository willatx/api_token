companies = []
number_of_companies = 20

(1..number_of_companies).each do |company_number|
  companies.push({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.word
  })
end

Company.create!(companies)
