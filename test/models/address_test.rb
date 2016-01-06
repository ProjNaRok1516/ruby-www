require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test "should save correct address" do
    adres = addresses(:one)
    assert adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_without_flat)
    assert adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_without_street)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_without_building)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_without_city)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_without_postalcode)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_with_empty_street)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_street_too_short)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_street_too_long)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_with_empty_building)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_building_too_long)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_flat_too_long)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_with_empty_city)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_city_too_short)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_city_too_long)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_postalcode_too_short)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_postalcode_too_long)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_postalcode_without_dash)
    assert_not adres.save, "correct address not saved"
  end

  test "should save correct address" do
    adres = addresses(:address_postalcode_with_letter)
    assert_not adres.save, "correct address not saved"
  end
