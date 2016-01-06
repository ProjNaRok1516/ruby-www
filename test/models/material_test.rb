require 'test_helper'

class MaterialTest < ActiveSupport::TestCase
  test "should save correct material" do
    material = materials(:one)
    assert material.save, "correct material not saved"
  end
  
   test "should save correct material price with percision" do
    material = materials(:two)
    assert material.save, "correct material price with precision not saved"
  end
  
   test "should not save material without name" do
    material = materials(:material_without_name)
    assert_not material.save, "material saved without name"
  end

  test "should not save material without price" do
    material = materials(:material_without_price)
    assert_not material.save, "material saved without price"
  end

  test "should not save material with empty name" do
    material = materials(:material_with_empty_name)
    assert_not material.save, "material saved with empty name"
  end
  
   test "should not save material with empty price" do
    material = materials(:material_with_empty_price)
    assert_not material.save, "material saved with empty price"
  end
  
   test "should not save material with too short name" do
    material = materials(:material_with_name_too_short)
    assert_not material.save, "material saved with too short name"
  end 
  
   test "should not save material with too long name" do
    material = materials(:material_with_name_too_long)
    assert_not material.save, "material saved with too long name"
  end 
  
   test "should not save material with negative price" do
    material = materials(:material_with_negative_price)
    assert_not material.save, "material saved with negative price"
  end 
  
   test "should not save material no cost" do
    material = materials(:material_with_no_cost)
    assert_not material.save, "material saved with no cost"
  end 

   test "should not save material with too big price" do
    material = materials(:material_with_too_big_price)
    assert_not material.save, "material saved with too big price"
  end 
end
