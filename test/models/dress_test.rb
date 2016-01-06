require 'test_helper'

class DressTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
   end
   
   test "name can't be blank" do
    assert_not Dress.create(name: "").valid?
  end
  
  test "name should be saved" do
    assert Dress.create(name: "Mala czarna").valid?
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
  
   test "should  save dress with a decimal in cost" do
     assert Dress.create(cost: "200.0").valid?
  end
  
     test "should not save dress with a negative number" do
     assert_not Dress.create(cost: -1).valid?
  end
   
  
  test "should not save dress with a zero value in cost" do
     assert_not Dress.create(cost: 0).valid?
  end
  
  test "cost can't be blank" do
     assert_not Dress.create(cost:nil).valid?
  end
  
  test "should not save dress with too big value in cost" do
     assert_not Dress.create(cost: 1000000.0).valid?
  end
  
    test "should not save dress without style" do
     assert_not Dress.create(style: nil).valid?
  end
   test "should save dress with style" do
     bufiasta=Styl.new
     assert Dress.create(style: bufiasta).valid?
  end
  
   test "should not save dress without material" do
     assert_not Dress.create(style: nil).valid?
  end
  
   test "should save dress with material" do
     jedwab=Material.new
     assert_not Dress.create(style: jedwab).valid?
  end
  
  
  
   
end
