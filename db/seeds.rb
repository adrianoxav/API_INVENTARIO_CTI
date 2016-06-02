# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Kit.destroy_all


100.times do |i|
	User.create!({firstname: "name-#{i+1}",
	                      lastname: "last-#{i+1}",
												username: "user-#{i+1}.#{i+1}",
												password_digest: "asdadasdadad",
												email: "user-#{i+1}@example.com",
												function: "function-#{i+1}",
												phone: "00000000000",
												gender: ["Male","Female"].sample(),
												cellphone: "0000000000000"
	             }		)

	Item.create!({title: "item-#{i}",
								code: "asdasdas",
								item_type: ["desarrollo","prueba"].sample(),
								state: ["nuevo","usado"].sample(),
								reference: "adsasdasdasd",
	              domain: "Materias",
	              characteristics: "asdasjdhjashdjashdjhasdjkashdkjahs"
	             })
end

owners_name = ["ESPOL","CTI","SENESCYT"]

owners_name.length.times {|i|
	Owner.create! name: owners_name[i], code: "#{owners_name[i]}-0001"
}

owners = Owner.all
items = Item.all

50.times do |i|
	 kit=Kit.create!({title: "kit-#{i}",
							 number_elements:rand(10),
							 code:"asdasdasdsd",
               kit_type: ["desarrollo","prueba"].sample(),
               state: ["nuevo","usado"].sample(),
               reference: "adsasdasdasd",
               domain: "Materias",
               purpose: "asdasdasdasdasdasd"

	             })

	 (rand(10)+1).times{ |i|
		 kit.kit_comments.create!( comments:"asdasd-#{i}")
		 kit.items<<items.sample
		 kit.owners<<owners.sample
	 }

	 KitApprover.create! user:User.all.sample, kit:kit, approved:[true,false].sample
	 KitBuyer.create! user:User.all.sample, kit:kit, value:"asdasdasd", comment:"agjsdhakjsdhjashdjkhaskdjhaskjdhkjsahdkjhasdjhaskdhakjshdkjasd"
	 KitVerifier.create! user:User.all.sample, kit:kit, state:[true,false].sample, comments:"askldjkasjdkasjdksajdlkasjdljasdkjasdjkasld"
end


