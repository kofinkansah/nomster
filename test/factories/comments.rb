FactoryGirl.define do
	factory :comment do
		message "Ok food"
		rating "1_star"
		association :user
		association :place
	end

end