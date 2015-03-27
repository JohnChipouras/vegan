require 'test_helper'

class ListTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @list = @user.list.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @list.valid?
  end

  test "user id should be present" do
    @list.user_id = nil
    assert_not @list.valid?
  end
  
  test "content should be present" do
    @list.content = "   "
    assert_not @list.valid?
  end

  test "content should be at most 140000 characters" do
    @list.content = "a" * 141000
    assert_not @list.valid?
  end
  
  test "order should be most recent first" do
    assert_equal List.first, lists(:most_recent)
  end
end
