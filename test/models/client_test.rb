require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "should not save wrong client data" do
    client = Client.new
    assert_not client.save
  end
  test "should save correct client data" do
    mojmojadres = Address.new
    mojmojadres.street = "Grunwaldzka"
    mojadres.building = "2"
    mojadres.flat = "2"
    mojadres.city = "Gdansk"
    mojadres.postalcode = "80-18"
    client = Client.new
    client.firstname = "Basia"
    client.lastname = "Bryś"
    client.phone = "456123789"
    client.address = mojadres
    assert client.save
  end
  test "should not save correct client without address" do
    assert_not Dress.create(address: nil).valid?
  end
  test "should not save clients firstname and lastname with small letter at the beggining" do
    mojmojadres = Address.new
    mojmojadres.street = "Grunwaldzka"
    mojadres.building = "2"
    mojadres.flat = "2"
    mojadres.city = "Gdansk"
    mojadres.postalcode = "80-18"
    client = Client.new
    client.firstname = "basia"
    client.lastname = "bryś"
    client.phone = "456123789"
    client.address = mojadres
    assert client.save
  end
  test "should not save phone number longer than 9 characters" do
    mojmojadres = Address.new
    mojmojadres.street = "Grunwaldzka"
    mojadres.building = "2"
    mojadres.flat = "2"
    mojadres.city = "Gdansk"
    mojadres.postalcode = "80-18"
    client = Client.new
    client.firstname = "basia"
    client.lastname = "bryś"
    client.phone = "45612378910"
    client.address = mojadres
    assert client.save
  end
end
