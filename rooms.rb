class Room

attr_reader :name, :capacity

      def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @guests = []
        @songs = []
        # @all_guests = []
      end


def guests_count
  return @guests.length
end



def check_in_guests(guest)
  @guests << guest
end

# for room in @all_rooms
# 	return room.rooms_name
# end


# Has to be explained
def check_out_guests(guest)
  # index = @guests.index(guest)
  # @guests.slice!(index, 1)
  @guests.delete(guest)
end












# ERROR ADD MULTIPLE GUESTS - ASK
def add_multile_people_to_room(guests_to_add)

  # for guest in guests_to_add
  #   # check_in_guests(guest)
  #   @guests.push(guest)
  # end

  guests_to_add.each { |guest| @guests.push(guest)  }
end

def song_count
  return @songs.length
end



def check_in_song(song)
  @songs << song
end

def check_capacity(capacity)
  if @capacity == 3
    return true
  else
    return false
end
end

def check_space_in_room(guests)
  if guests.length > @capacity
    return false
  else
    return true
end
end





end
