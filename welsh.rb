WELSH = {
"Lipides" => 38.4,
"Glucides" => 18.3,
"Protéines" => 36.3
}

MENU = {
    "WELSH" => {
        "Lipides" => 38.4,
        "Glucides" => 18.3,
        "Protéines" => 36.3
     	},
    "FRITES" => {
        "Lipides" => 15,
        "Glucides" => 41,
        "Protéines" => 3.4
     	},
    "BIERE" => {
        "Lipides" => 0,
        "Glucides" => 25,
        "Protéines" => 4
     	},
    "PRIX" => {
       "WELSH" => { prix: 15 },
       "FRITES" => { prix: 4 },
       "BIERE" => { prix: 5 }
    	}
}
	def weight_watchers(tableau)
		calories = {
"Lipides" => 9,
"Glucides" => 4,
"Protéines" => 4
}
	total = 0 
		for i in 0...tableau.length
			total += tableau.values[i].to_f * calories.values[i].to_i
		end
	total.to_i
	end

	weight_watchers(WELSH)


	


		def meal_weight_watchers(menu)
		calories = {
"Lipides" => 9,
"Glucides" => 4,
"Protéines" => 4
}

		calcul = 0
		cal = []

	(menu.length - 1).times{ |o|
		cal[o] = weight_watchers(menu.values[o])

		
				puts "calorie de #{menu.keys[o]}:#{cal[o]} "
		}
			cal.each{|m|
			calcul += m.to_i
	 }
	 			puts "calories de menu #{calcul}"
		end
	meal_weight_watchers(MENU)




	def meal_price(array)
	b = 0
	car = 0
	arr = array.values[(array.length - 1)]
	arr1 = arr.values
	arr2 = []
	arr1.each{|z|
		arr2[b] = z.values
		b += 1
	}
	arr2.each{|s|
		car += s[0].to_i
	}

	puts "price : #{car}"
	end
meal_price(MENU)