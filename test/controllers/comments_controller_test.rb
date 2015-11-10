require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   test "comment creation functionality" do
     user = FactoryGirl.create(:user)
     sign_in user

     place = FactoryGirl.create(:place)

     assert_difference 'place.comments.count' do
		post :create, :place_id => place.id, :comment => {:message => 'awesome!', :rating =>'4_stars'}
  	 end

     assert_redirected_to place_path(place)

   end
end