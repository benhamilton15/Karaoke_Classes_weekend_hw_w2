class Rooms

  attr_reader :number, :songs, :guests, :fee

  def initialize(number, max_capacity, fee)
    @number = number
    @songs = []
    @guests = []
    @max_capacity = max_capacity
    @fee = fee
  end

  def add_song(song)
    @songs << song
  end

  def add_guest(guest)
    if is_under_max_capacity?()
      if guest.can_afford(@fee)
        guest.pay_fee(@fee)
        @guests << guest
      end
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def is_under_max_capacity?()
    return @guests.length < @max_capacity
  end

  def song_list
    song_names = []
    @songs.map{ |song| song_names << song.name }
    return song_names
  end


end
