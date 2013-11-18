FactoryGirl.define do
	# factory :user do
	# 	name "Yuan Ting"		
	# 	email "yuantingisme@gmail.com"
	# 	password "121314"
	# 	password_confirmation "121314"
	# end
	factory :user do
		sequence(:name) { |n| "Person #{n}"}
		sequence(:email) { |n| "Person_#{n}@example.com"}
		password "foobar"
		password_confirmation "foobar"

	    factory :admin do
		  admin true
	    end
	end

	factory :micropost do
		content "Lorem ipsum"
		user
	end
end