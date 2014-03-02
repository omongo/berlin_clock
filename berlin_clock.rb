class BerlinClock
  def setTime time
    @time = time
  end

  def display
    second = @time[6..7].to_i
    minute = @time[3..4].to_i
    min2_display = "5OOOO"

    case second % 2
      when 0
        second_display = "1Y"
      when 1 
        second_display = "1O"
    end

    min2_display = "5" + "Y" * (minute % 5) + "O" * (4 - minute % 5) 
    
    min1_display = " 4"
    for i in 1..(minute / 5) do 
      if i % 3 != 0 
        min1_display += "Y"
      else
        min1_display += "R"
      end
    end

    min1_display += "O" * (11 - minute / 5)

    second_display + " 2OOOO 3OOOO" + min1_display +" "+ min2_display 
  end
end
