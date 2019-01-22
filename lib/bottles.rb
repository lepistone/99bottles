class Bottles
  def verse(count)
    <<-VERSE
#{say_bottles count} of beer on the wall, #{say_bottles count} of beer.
#{take_down count} and pass it around, #{say_bottles count-1} of beer on the wall.
VERSE
  end

  def say_bottles(count)
    case count
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
    when 1
      "Take it down"
    else
      "Take one down"
    end
  end
end
