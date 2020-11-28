class Consumer
  def consume(mailbox)
    res = mailbox.pop
    if res != "Hallo"
      puts "Fehler: #{res}"
    end
  end
end
