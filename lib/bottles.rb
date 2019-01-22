class Bottles
  def verse(count)
    <<-VERSE
#{say_bottles count} of beer on the wall, #{say_bottles count} of beer.
Take one down and pass it around, #{say_bottles count-1} of beer on the wall.
VERSE
  end

  def say_bottles(count)
    if count == 1
      "1 bottle"
    else
      "#{count} bottles"
    end
  end
end
