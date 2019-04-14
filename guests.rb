class Guests

  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_fee(fee)
    if can_afford(fee)
      @wallet -= fee
    end
  end

  def can_afford(fee)
    return @wallet >= fee
  end

  def fav_song_playing_in_room?(room)
    if room.song_list.include?(@fav_song)
      return "This place is lit!"
    end
    return "i need more drinks for this"
  end
  #compare it to a map of the song names


end
