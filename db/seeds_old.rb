# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cadastrando os Emmpresas de Celulares"
companies = ["Algar", "Claro", "Nextel", "Oi", "Sercontel", "Tim", "Vivo", "MVNO"]
  companies.each do |name|
    MobileCompany.create!(name: name)
    puts "Empresa #{name}"
  end

  puts "Empresas Cadastradas...."
