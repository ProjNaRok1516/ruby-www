require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "should save proper client" do
    client = clients(:one)
    assert_not client.save, "proper client not saved"
  end

end
