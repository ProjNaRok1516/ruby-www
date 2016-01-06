require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save wrong address" do
    adres = Address.new
    assert_not adres.save, "empty address saved"
  end
  test "should save correct address" do
    adres = Address.new
    adres.street = "Grunwaldzka"
    adres.building = "2"
    adres.flat = "2"
    adres.city = "Gdansk"
    adres.postalcode = "80-180"
    assert adres.save, "full address not saved"
  end
  test "should save correct address without flat" do
    adres = Address.new
    adres.street = "Grunwaldzka"
    adres.building = "2"
    adres.city = "Gdansk"
    adres.postalcode = "80-180"
    assert adres.save, "address without flat not saved"
  end
end
