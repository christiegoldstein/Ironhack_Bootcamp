# lib/programmer.rb

class Programmer
  include CaffeineConsumer
  include Payable
  
  def program
    consume_caffeine
    do_wonderful_things_with_computers
  end

  def do_wonderful_things_with_computers
    puts "Coding wonderful things!"
  end
end