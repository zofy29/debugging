# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Create companies
company_names = %w(CompanyA CompanyB CompanyC CompanyD CompanyE CompanyF)
Company.create(company_names.map { |name| { name: name } })

### Create products
company_ids = [*Company.pluck(:id), nil]
product_data = company_ids.each_with_index.map do |e, i|
  { name: "Product#{i + 1}", price: 60000, company_id: e }
end

Product.create(product_data)
