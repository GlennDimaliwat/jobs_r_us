# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xero = Company.create!(name: 'Xero', type: 'finance')
Company.create!(name: 'Australia Post', type: 'utility')
Company.create!(name: 'Coder Academy', type: 'education')
envato = Company.create!(name: 'Envato', type: 'ecommerce')
zendesk = Company.create!(name: 'Zendesk', type: 'productivity')
atlassian = Company.create!(name: 'Atlassian', type: 'productivity')
Company.create!(name: 'Gum Tree', type: 'ecommerce')
Company.create!(name: 'ANZ', type: 'finance')
cba = Company.create!(name: 'Commonwealth Bank', type: 'finance')

[xero, envato, zendesk, atlassian, cba].each do |company|
    Job.create!(company: company, title: 'Junior React Developer', front_end: true, back_end: false, description: 'React + JavaScript + Redux')

    Job.create!(company: company, title: 'Junior Rails Developer', front_end: false, back_end: true, description: 'Rails + Ruby + Rspec')

    Job.create!(company: company, title: 'Full Stack Rails Developer', front_end: true, back_end: true, description: 'Node.js + JavaScript + Express + HTML + CSS')
end