require 'test_helper'

class DressTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
   end
   
   test "name can't be blank" do
    assert_not Dress.create(name: "").valid?
  end
  
  test "should not save dress with too short name" do
    assert_not Dress.create(name: "a").valid?
  end
  
  test "should not save dress with an int in name" do
      assert_not Dress.create(name: "123").valid?
  end
  
  
   test "should not save dress with a string in cost" do
     assert_not Dress.create(cost: "abcd").valid?
  end
  
     test "should not save dress with a negative number" do
     assert_not Dress.create(cost: "").valid?
  end
  
   
   
end
