class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    quota = 50 + (0.5 * @experience)
    return quota
  end

  def deliver(start_address, end_address)
    a = (end_address - start_address).abs
    # puts "I have deliveered #{a} PAPERS!!"
    if a == quota
      @earnings += 0.25 * a
    elsif a < quota
      @earnings += 0.25 * a - 2
    else
      @earnings += 0.25 * quota + 0.5 * (a - quota)
    end
    @experience += a
  end

  def report
    puts "My name is #{@name}, I've delivered #{@experience} papers and have earned $#{@earnings} so far!"
  end

end


paperboy_1 = Paperboy.new('Bubba')
paperboy_1.deliver(235,110)
paperboy_1.report

paperboy_1.deliver(23, 110)
paperboy_1.report

puts paperboy_1.quota
