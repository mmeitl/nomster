require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "unique_tag" do 
    comment = Comment.new(:rating => '1_star').humanized_rating
    expected = "one star"
    actual = comment
    assert_equal expected, actual
  end
  # end
end
