require 'test_helper'

class MaterialTest < ActiveSupport::TestCase
   test "the truth" do
   assert true
  end
  
  test "name can't be blank" do
    assert_not Material.create(name: "").valid?
  end
  test "should save name" do
    assert Material.create(name: "jedwab").valid?
  end
  test "name can't longer than 50 chars" do
    assert_not Material.create(name: "jedwabfwethwyjrukjtyrhgfdcscdsfvbgnmhngbfvdsahbyjnbvdfsdferghtjnbvcsxsdwreththbvcserhtbfvcserghbfvsfgrfb").valid?
  end
  
  test "shoud not save material's name with int value" do
    assert_not Material.create(name: 123).valid?
  end
  
    test "shoud not save material's cost with negative value" do
    assert_not Material.create(name: -123).valid?
  end
   test "shoud save material's cost" do
    assert Material.create(name: 25.00).valid?
  end
  
  test "shoud not save material's cost with nil value" do
    assert_not Material.create(name: nil).valid?
  end
  
  test "shoud not save material's cost with zero value" do
    assert_not Material.create(name: 0).valid?
  end
  
  test "shoud not save material's cost with a string value" do
    assert_not Material.create(name: "avbfdsvrghtbfvcdgrhtbvcfghdsdfsgd").valid?
  end
  
  
end
