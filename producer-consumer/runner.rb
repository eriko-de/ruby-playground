require './mailbox.rb'
require './consumer.rb'
require './producer.rb'

c = Consumer.new
p = Producer.new
m = Mailbox.new

threads = []

3.times do
  threads << Thread.new do
    100000000.times do
      c.consume(m)
    end
  end
end

3.times do
  threads << Thread.new do
    10000000.times do
      p.produce(m)
    end
  end
end

threads << Thread.new do

  100.times do
    puts "hallo"
    puts "#{m.get_reads} | #{m.get_writes}"
    sleep(1)
  end
end

threads.each { |thr| thr.join }
