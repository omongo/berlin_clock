class BerlinClock

  def setTime time
    @time = time
  end

  def display
    second = @time[6..7].to_i
    minute = @time[3..4].to_i
    hour = @time[0..1].to_i
    min2_display = "5OOOO"

    case second % 2
      when 0
        second_display = "1Y"
      when 1 
        second_display = "1O"
    end

    min_div_five = minute / 5
    min_mod_five = minute % 5
    hour_div_five = hour / 5
    hour_mod_five = hour % 5

    min2_display = " 5" + "Y" * (min_mod_five) + "O" * (4 - min_mod_five) 
    hour2_display = " 2" + "Y" * (hour_div_five) + "O" * (4 - hour_div_five) 

    min1_display = " 4"
    (1..(min_div_five)).each do |i|
      min1_display += i % 3 != 0 ? "Y" : "R"
    end

    min1_display += "O" * (11 - min_div_five)
    hour1_display = " 3" + "Y" * (hour_mod_five) + "O" * (4 - hour_mod_five) 
    second_display + hour2_display + hour1_display + min1_display + min2_display 
  end

end
