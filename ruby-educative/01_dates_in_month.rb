def playing_with_numbers(hours_in_december, minutes_in_december)
    return "There are #{hours_in_december} hours and #{minutes_in_december} minutes in December."
end

hours_in_december = 24 * 31
minutes_in_december = hours_in_december * 60

puts playing_with_numbers(hours_in_december, minutes_in_december)