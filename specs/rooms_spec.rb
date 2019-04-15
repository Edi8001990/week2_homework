# Check each particular name by array

require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRiver < MiniTest::Test

def setup
@room1 = Room.new("Pop Room", 3)
@room2 = Room.new("Rock Room", 5)
@room3 = Room.new("Metal Room",6)
@all_rooms = [@room1, @room2, @room3]

@song1 = Song.new("Michael Jackson: Bad", "Pop Room")

@guest1 = Guest.new("Johny")
@guest2 = Guest.new("Maria")
@guest3 = Guest.new("Peter")

@all_guests = [@guest1, @guest2, @guest3]
end

def test_whether_room_has_name
#expected = ["Pop Room", "Rock Room", "Metal Room"]
   assert_equal("Pop Room",  @room1.name)
end

def test_whether_room_has_capacity
  assert_equal(3, @room1.capacity)
end


def test_add_one_guest_to_room
  @room1.check_in_guests(@guest1)
  assert_equal(1, @room1.guests_count)
end



def test_remove_one_guest_from_room
  @room1.check_in_guests(@guest1)
  @room1.check_out_guests(@guest1)
assert_equal(0, @room1.guests_count)
end


def test_add_song_to_room
  @room1.check_in_song(@song1)
  assert_equal(1, @room1.song_count)
end



def test_limited_room_capacity
  assert_equal(true, @room1.check_capacity(@capacity))
end

def test_guests_amount_in_room
  assert_equal(true, @room1.check_space_in_room(@all_guests))
end




def test_check_in_multile_people_to_room
  @room3.add_multile_people_to_room(@all_guests)
  assert_equal(3, @room3.guests_count)
end




end
