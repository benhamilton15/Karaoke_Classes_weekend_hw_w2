require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')
require_relative('../rooms.rb')
require_relative('../guests.rb')

class RoomsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Gucci Gang")
    @song2 = Songs.new("Attention")
    @songs = [@song1, @song2]
    @guest1 = Guests.new("Bob", 10, "Gucci Gang")
    @guest2 = Guests.new("Billy", 15, "Hand Clap")
    @guest3 = Guests.new("Ricardo", 3, "Attention")
    @room1 = Rooms.new(1, 2, 5)
  end

  def test_room_has_number
    assert_equal(1,@room1.number)
  end


  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(1, @room1.songs.length)
  end


  def test_add_guest_to_room
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests.length)
  end

  def test_add_guest_to_room__cannot_afford_fee
    @room1.add_guest(@guest3)
    assert_equal(0, @room1.guests.length)
  end

  def test_add_guest_to_room__max_capacity
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(2, @room1.guests.length)
  end


  def test_remove_guest_from_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.guests.length)
  end


end
