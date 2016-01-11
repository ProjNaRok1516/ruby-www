require 'test_helper'

class DressTest < ActiveSupport::TestCase
  test "should save proper dress" do
    dress = dresses(:one)
    assert dress.save, "proper dress not saved"
  end

   test "should save correct dress price with percision" do
    dress = dresses(:two)
    assert dress.save, "correct dress price with precision not saved"
  end

  test "should not save dress without name" do
    dress = dresses(:dress_without_name)
    assert_not dress.save, "dress without name saved"
  end

  test "should not save dress without cost" do
    dress = dresses(:dress_without_cost)
    assert_not dress.save, "dress without cost saved"
  end

  test "should not save dress without style" do
    dress = dresses(:dress_without_style)
    assert_not dress.save, "dress without style saved"
  end

  test "should not save dress without material" do
    dress = dresses(:dress_without_material)
    assert_not dress.save, "dress without material saved"
  end

  test "should not save dress without order" do
    dress = dresses(:dress_without_order)
    assert_not dress.save, "dress without order saved"
  end

  test "should not save dress with empty name" do
    dress = dresses(:dress_with_empty_name)
    assert_not dress.save, "dress with empty name saved"
  end

  test "should not save dress with empty cost" do
    dress = dresses(:dress_with_empty_cost)
    assert_not dress.save, "dress with empty cost saved"
  end

  test "should not save dress with name too short" do
    dress = dresses(:dresses_with_name_too_short)
    assert_not dress.save, "dress with name too short saved"
  end

  test "should not save dress with cost too low" do
    dress = dresses(:dresses_with_cost_too_low)
    assert_not dress.save, "dress with cost too low saved"
  end

  test "should not save dress with name too long" do
    dress = dresses(:dresses_with_name_too_long)
    assert_not dress.save, "dress with name too long saved"
  end

  test "should not save dress with cost too big" do
    dress = dresses(:dresses_with_cost_too_big)
    assert_not dress.save, "dress with cost too big saved"
  end
end
