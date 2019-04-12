require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Gucci Gang")
  end

  def test_song_has_name
    assert_equal("Gucci Gang", @song1.name)
  end


end
