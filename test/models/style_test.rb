require 'test_helper'

class StyleTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
   end
   
   test "name can't be blank" do
    assert_not Style.create(name: "").valid?
  end
  test "should save name" do
    assert Style.create(name: "Do kostek").valid?
  end
  test "name can't longer than 50 chars" do
    assert_not Style.create(name: "blablafwethwyjrukjtyrhgfdcscdsfvbgnmhngbfvdsahbyjnbvdfsdferghtjnbvcsxsdwrjbvfyhtsrxcvbjvhcxreartfynknbjvhcgeththbvcserhtbfvcserghbfvsfgrfb").valid?
  end
  
  test "shoud not save style's name with int value" do
    assert_not Style.create(name: 1234).valid?
  end
  
    test "shoud not save material's amout with negative value" do
    assert_not Material.create(name: -123).valid?
  end
   test "shoud not save material's amout with an zero value" do
    assert Material.create(name: 0).valid?
  end
  
  test "shoud not save material's amout with nil value" do
    assert_not Material.create(name: nil).valid?
  end
  

   
end
