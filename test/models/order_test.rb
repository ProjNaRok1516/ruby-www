require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should save proper order" do
    order = orders(:one)
    assert order.save, "proper order not saved"
  end

  test "should not save order without data" do
    order = orders(:order_without_data)
    assert_not order.save, "order without data saved"
  end

  test "should not save order without total cost" do
    order = orders(:order_without_total_cost)
    assert_not order.save, "order without total cost saved"
  end

  test "should not save order without status" do
    order = orders(:order_without_status)
    assert_not order.save, "order without status saved"
  end

  test "should not save order without client" do
    order = orders(:order_without_client)
    assert_not order.save, "order without client saved"
  end

  test "should not save order with empty data" do
    order = orders(:order_with_empty_data)
    assert_not order.save, "order with empty data saved"
  end

  test "should not save order with empty total cost" do
    order = orders(:order_with_empty_total_cost)
    assert_not order.save, "order with empty total cost saved"
  end

  test "should not save order with total cost too low" do
    order = orders(:order_with_total_cost_too_low)
    assert_not order.save, "order with total cost too low saved"
  end

  test "should not save order with total cost too big" do
    order = orders(:order_with_total_cost_too_big)
    assert_not order.save, "order with total cost too big saved"
  end

  test "should not save order with status too low" do
    order = orders(:order_with_status_too_low)
    assert_not order.save, "order with status too low saved"
  end

  test "should not save order with status too big" do
    order = orders(:order_with_status_too_big)
    assert_not order.save, "order with status too big saved"
  end
end
