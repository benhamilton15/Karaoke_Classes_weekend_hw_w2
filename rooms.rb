class Rooms

  attr_reader :number, :songs, :guests

  def initialize(number, max_capacity)
    @number = number
    @songs = songs
    @songs = []
    @guests = []
    @max_capacity = max_capacity
  end

  def add_song(song)
    @songs << song
  end

  def add_guest(guest)
    if is_under_max_capacity?()
      @guests << guest
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def is_under_max_capacity?()
    return @guests.length < @max_capacity
  end


end
