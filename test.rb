require 'pp'



class Liste

  class Node
    @next
    @prev
  end

  @first
  @last

  def initialize()
    @first = @last = new Node()
  end
end


puts "Hallo"
pp ARGF
