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

  test "should not save address without street" do
    adres = addresses(:address_without_street)
    assert_not adres.save, "address saved without street"
  end

  test "should not save address without building" do
    adres = addresses(:address_without_building)
    assert_not adres.save, "address saved without building"
  end

  test "should not save address without city" do
    adres = addresses(:address_without_city)
    assert_not adres.save, "address saved without city"
  end

  test "should not save address without postalcode" do
    adres = addresses(:address_without_postalcode)
    assert_not adres.save, "address saved without postalcode"
  end

  test "should not save address with empty street" do
    adres = addresses(:address_with_empty_street)
    assert_not adres.save, "address saved with empty street"
  end

  test "should not save address with too short street" do
    adres = addresses(:address_street_too_short)
    assert_not adres.save, "address saved with too short street"
  end

  test "should not save address with too long street" do
    adres = addresses(:address_street_too_long)
    assert_not adres.save, "address saved with too long street"
  end

  test "should not save address with empty building" do
    adres = addresses(:address_with_empty_building)
    assert_not adres.save, "address saved with empty building"
  end

  test "should not save address with too long building number" do
    adres = addresses(:address_building_too_long)
    assert_not adres.save, "address saved with too long building number"
  end

  test "should not save address with to long flat number" do
    adres = addresses(:address_flat_too_long)
    assert_not adres.save, "address saved with too long flat number"
  end

  test "should not save address with empty city" do
    adres = addresses(:address_with_empty_city)
    assert_not adres.save, "address saved with empty city"
  end

  test "should not save address with too short city name" do
    adres = addresses(:address_city_too_short)
    assert_not adres.save, "address saved with too short city name"
  end

  test "should not save address with too long city name" do
    adres = addresses(:address_city_too_long)
    assert_not adres.save, "address saved with too long city name"
  end

  test "should not save address with too short postalcode" do
    adres = addresses(:address_postalcode_too_short)
    assert_not adres.save, "address saved with too short postalcode"
  end

  test "should not save address with too long postalcode" do
    adres = addresses(:address_postalcode_too_long)
    assert_not adres.save, "address saved with too long postalcode"
  end

  test "should not save address postalcode without dash" do
    adres = addresses(:address_postalcode_without_dash)
    assert_not adres.save, "address saved without dash in postalcode "
  end

  test "should not save address postalcode with letter" do
    adres = addresses(:address_postalcode_with_letter)
    assert_not adres.save, "address saved with letter in postalcode"
  end
end
