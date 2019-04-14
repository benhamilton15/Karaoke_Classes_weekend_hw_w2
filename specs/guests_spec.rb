require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')

class GuestsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Gucci Gang")
    @guest1 = Guests.new("Bob", 10, "Gucci Gang")
    @guest2 = Guests.new("Billy", 15, "Hand Clap")
    @room1 = Rooms.new(1, 5, 5)
  end

  def test_guest_has_name
    assert_equal("Bob", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(10, @guest1.wallet)
  end

  def test_has_favourite_song
    assert_equal("Hand Clap", @guest2.fav_song)
  end

  def test_pay_fee
    @guest1.pay_fee(4)
    assert_equal(6, @guest1.wallet)
  end

  def test_pay_fee__can_not_afford
    @guest1.pay_fee(100)
    assert_equal(10,@guest1.wallet)
  end

  def test_guests_favoutrite_song_is_on_room_playlist
    @room1.add_song(@song1)
    result = @guest1.fav_song_playing_in_room?(@room1)
    assert_equal("This place is lit!",result )
  end

end
