require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment exists" do
    u = FactoryGirl.create(:user)
    sign_in u
    place = FactoryGirl.create(:place)

    post :create, :place_id => place.id, :comment => {
      :rating => '1_star',
      :message => 'is this working'}
    assert_redirected_to place_path(place)
    comment = Comment.last
    assert_equal '1_star', comment.rating
    assert_equal 'is this working', comment.message
  end
end
