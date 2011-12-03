Shoes.app do
  button("Open Box")do
    if (rand(2) == 0)
      puts "Your cat is alive!  Yay!"
    else
      puts "Your poor cat is dead..."
    end
  end
  button("Exit")do
    exit!
  end
end