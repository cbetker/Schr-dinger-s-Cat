def time_diff_milli(start, finish)
  (finish - start) * 1000.0
end
Shoes.app do
  t1 = Time.now
  
  button("Open Box")do
    t2 = Time.now
    time = time_diff_milli(t1, t2)
    time = (time / 100).to_i
    death_counter = []
    time.times { death_counter << rand(1000)}
    alive = true
    death_counter.each do | test |
      if test == 666
        alive = false
      end
    end
    alert("Your poor cat is dead")unless(alive)
    alert("Your cat is alive!  Yay!")if(alive)
  end
  button("Exit")do
    exit!
  end
end