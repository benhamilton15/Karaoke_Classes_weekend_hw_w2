require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Bob", 10)
    @guest2 = Guests.new("Billy", 15)
    @room1 = Rooms.new(1, 5)
  end

  def test_guest_has_name
    assert_equal("Bob", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(10, @guest1.wallet)
  end

end
