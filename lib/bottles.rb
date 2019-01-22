class Bottles
  def verse(count)
    "#{say_bottles count} of beer on the wall, #{say_bottles count} of beer.".capitalize +
    "\n#{take_down count}, #{say_bottles count-1} of beer on the wall.\n"
  end

  def verses(start, finish)
    start.downto(finish).map{|i| verse(i)}.join("\n")
  end

  def say_bottles(count)
    case count
    when -1
      "99 bottles"
    when  0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end

  def take_down(count)
    case count
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end
