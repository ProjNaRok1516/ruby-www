require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "should save proper client" do
    client = clients(:one)
    assert client.save, "proper client not saved"
  end

  test "should not save client without address" do
    client = clients(:client_without_address)
    assert_not client.save, "client without address saved"
  end

  test "should not save client without firstname" do
    client = clients(:client_without_firstname)
    assert_not client.save, "client without firstname saved"
  end

  test "should not save client without lastname" do
    client = clients(:client_without_lastname)
    assert_not client.save, "client without lastname saved"
  end

  test "should not save client without phone" do
    client = clients(:client_without_phone)
    assert_not client.save, "client without phone saved"
  end

  test "should not save client with empty firstname" do
    client = clients(:client_with_empty_firstname)
    assert_not client.save, "client with empty firstname saved"
  end

  test "should not save client with empty lastname" do
    client = clients(:client_with_empty_lastname)
    assert_not client.save, "client with empty lastname saved"
  end

  test "should not save client with empty phone" do
    client = clients(:client_with_empty_phone)
    assert_not client.save, "client with empty phone saved"
  end

  test "should not save client with firstname too short" do
    client = clients(:client_with_firstname_too_short)
    assert_not client.save, "client with firstname too short saved"
  end

  test "should not save client with lastname too short" do
    client = clients(:client_with_lastname_too_short)
    assert_not client.save, "client with lastname too short saved"
  end

  test "should not save client with phone too short" do
    client = clients(:client_with_phone_too_short)
    assert_not client.save, "client with phone too short saved"
  end

  test "should not save client with firstname too long" do
    client = clients(:client_with_firstname_too_long)
    assert_not client.save, "client with firstname too long saved"
  end

  test "should not save client with lastname too long" do
    client = clients(:client_with_lastname_too_long)
    assert_not client.save, "client with lastname too long saved"
  end

  test "should not save client with phone too long" do
    client = clients(:client_with_phone_too_long)
    assert_not client.save, "client with phone too long saved"
  end

  test "should not save client with phone contains letter" do
    client = clients(:client_with_phone_contains_letter)
    assert_not client.save, "client with phone contains letter saved"
  end
end
