puts 'Creating companies...'
Company.create(name: 'Google', founding_year: 1998)
Company.create(name: 'Facebook', founding_year: 2004)
Company.create(name: 'Dunder Mifflin', founding_year: 2002)
Company.create(name: 'Enron', founding_year: 1995)

puts 'Creating devs...'
Dev.create(name: 'Rick')
Dev.create(name: 'Morty')
Dev.create(name: 'Mr. Meseeks')
Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

# google = Company.first
# facebook = Company.second
# dunder = Company.third
# enron = Company.fourth

Freebie.create(
  item_name: 'laser',
  value: 2,
  company: Company.first,
  dev: Dev.first,
)
Freebie.create(
  item_name: 'sunglasses',
  value: 2,
  company: Company.first,
  dev: Dev.second,
)
Freebie.create(
  item_name: 'paper',
  value: 2,
  company: Company.third,
  dev: Dev.second,
)
Freebie.create(
  item_name: 'hat',
  value: 2,
  company: Company.first,
  dev: Dev.second,
)
puts 'Seeding done!'
