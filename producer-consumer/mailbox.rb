class Mailbox

  def initialize
    @box = []
    size = 0
    @reads = 0
    @writes = 0
  end

  def push obj
    @box.push
    @writes += 1
  end

  def pop
    iteration = 0
    while @box.length <= 0 && iteration <= 100 do
      sleep 1
      iteration += 1
    end
    @box.pop

    @reads += 1
  end

  def get_reads
    res = @reads
    @reads = 0
    return res
  end

  def get_writes
    res = @writes
    @writes = 0
    return res
  end
end
