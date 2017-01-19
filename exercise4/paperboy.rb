class Paperboy

attr_reader :name, :earnings
attr_accessor :experience


  def initialize (name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    quota = experience * 0.5 + 50
    puts "Quota is #{quota}"
    return quota
  end

  def deliver(start_address, end_address)
    delivered = end_address - start_address
    if delivered < 0
      @experience += delivered * -1.0 + 1
    else
      @experience += delivered + 1
    end
  end

  def report
    deliver_rev = 0.25 * experience
    bonus = 0
    if experience < quota
      bonus -= 2
    else
      bonus += (experience - quota) * 0.50
    end

    total_earnings = deliver_rev + bonus

    print "I'm #{name}. I've delivered #{experience} papers and I've earned #{total_earnings}"
  end

end
