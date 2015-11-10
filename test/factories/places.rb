FactoryGirl.define do 
	factory :place do
		sequence :name do |n|
		 "Manger Toujours #{n}"
		end
		address "215 Pointe North, Durham, NC 27712"
		description "Special Kenkey and Fish"
		latitude(42.3631519)
    	longitude(-71.056098)
		association :user
	end
end