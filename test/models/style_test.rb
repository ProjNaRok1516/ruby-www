require 'test_helper'

class StyleTest < ActiveSupport::TestCase
  test "should save correct style" do 
   style = styles(:one) 
   assert style.save, "correct style not saved" 
  end 

  test "should save correct style with max material amount" do 
   style = styles(:two) 
   assert style.save, "correct style with max matreial amount not saved" 
  end 
  
  test "should not save style with empty name" do 
   style = styles(:style_with_empty_name) 
   assert_not style.save, "style with empty name saved" 
  end 

  test "should not save style with empty image" do 
   style = styles(:style_with_empty_image) 
   assert_not style.save, "style with empty image saved" 
  end 
  
  test "should not save style with empty material amount" do 
   style = styles(:style_with_empty_material_amount) 
   assert_not style.save, "style with empty material amount saved" 
  end 
  
  test "should not save style without name" do 
   style = styles(:style_without_name) 
   assert_not style.save, "style without name saved" 
  end 
  
  test "should not save style without image" do 
   style = styles(:style_without_image) 
   assert_not style.save, "style without image saved" 
  end 
  
  test "should not save style without material amount" do 
   style = styles(:style_without_material_amount) 
   assert_not style.save, "style without material amount saved"
  end 
  
  test "should not save style with too long name" do 
   style = styles(:style_with_too_long_name) 
   assert_not style.save, "style with too long name saved" 
  end 
  
  test "should not save style with too big material amount" do 
   style = styles(:style_with_too_big_material_amount) 
   assert_not style.save, "stylewith too big material amount saved" 
  end 
  
  test "should not save style with too big image name" do 
   style = styles(:style_with_too_big_image_name) 
   assert_not style.save, "style with too big image name saved" 
  end 
  
  test "should not save style with too short name" do 
   style = styles(:style_with_too_short_name) 
   assert_not style.save, "style with too short name saved" 
  end 
  
  test "should not save style with zero material amount" do 
   style = styles(:style_with_zero_material_amount) 
   assert_not style.save, "style with zero material amount saved" 
  end 
  
  test "should not save style with too small image name" do 
   style = styles(:style_with_too_small_image_name) 
   assert_not style.save, "style with too small image name saved" 
  end 
  
  test "should not save style without extension" do 
   style = styles(:style_image_without_extension) 
   assert_not style.save, "style image without extension saved" 
  end 
  
  test "should not save style without dot before extension" do 
   style = styles(:style_image_without_dot_before_extension) 
   assert_not style.save, "style image without dot before extension saved" 
  end 
end
