# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "nokogiri"


url = 'https://www.rappi.com.br/lojas/900498307-zona-sul-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Visconde de Pirajá, 577"
market = "Zona Sul"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end



url = 'https://www.rappi.com.br/lojas/900143365-mundial-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Santo Afonso, 300"
market = "Mundial"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end


url = 'https://www.rappi.com.br/lojas/900143849-hortifruti-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Conde de Bonfim, 496"
market = "Hortifruti"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end


url = 'https://www.rappi.com.br/lojas/900536315-pao-de-azucar-now-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Dr. Satamini, 164 "
market = "Pão de Açúcar"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end


url = 'https://www.rappi.com.br/lojas/900129228-cencosud-prezunic-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Avenida Dom Hélder Câmara, 105"
market = "Prezunic"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end


url = 'https://www.rappi.com.br/lojas/900198874-grupo-big-hiper-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua do Catumbi, 112"
market = "Big"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end


url = 'https://www.rappi.com.br/lojas/900172746-superprix-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Conde de Bonfim, 540"
market = "SuperPrix"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end



url = 'https://www.rappi.com.br/lojas/900311261-extra-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Siqueira Campos, 143"
market = "Extra"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end



url = 'https://www.rappi.com.br/lojas/900198823-sams-club-super-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Santiago Guerra, 345"
market = "Sam's Club"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end



url = 'https://www.rappi.com.br/lojas/900484589-casas-pedro-rio-de-janeiro'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Rua Conde de Bonfim, 214"
market = "Casas Pedro"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end



url = 'https://www.rappi.com.br/lojas/900122549-verde-sao-paulo'
html = URI.open(url)
doc = Nokogiri::HTML(html)

imgs_srcs = []
names = []
prices = []
address = "Avenida Maracanã, 987"
market = "Mundo Verde"

doc.search(".enkVhF").each_with_index do |img, i|
  if i.odd?
  imgs_srcs.push(img["src"])
  end
end

doc.search("h4").each do |el|
  names.push(el.text)
end

doc.search(".bSQNyd").each do |el|
  prices.push(el.text.strip)
end

prices.map! do |price|
  price.scan(/(\d+,\d+)/)
end

prices.map! do |price|
  price[0][0]
end

prices.map! do |price|
  price.gsub(",", "")
end

prices.map! do |price|
  price.to_i
end

market_img = imgs_srcs[0]
imgs_srcs.delete_at(0)

p imgs_srcs.count
p names.count
p prices.count
p address
p market

instances_product = []

imgs_srcs.each_with_index do |src, i|
  instances_product.push(Product.new(image_url: src, name: names[i], address: address, market: market, market_image_url: market_img))
end

prices.each_with_index do |price, i|
  instances_product[i].price_cents = price
end

instances_product.each do |product|
  product.save
end
