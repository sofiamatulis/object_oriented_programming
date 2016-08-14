class Paperboy


    attr_reader :name, :experience, :side,  :earnings

    def initialize (name,side)
      @name= name
      @side=side
      @experience=0
      @earnings = 0

    end





    def deliver(start_address, end_address)
      if @side == "odd"
        (start_address..end_address).each do |address|
          if address % 2 != 0
             @experience += 1
           end
         end
       end

       if @side == "even"
         (start_address..end_address).each do |address|
           if address % 2 == 0
             @experience += 1
           end
         end
        end

      expected_quota = quota
      if (@experience - expected_quota) == 0
        @earnings =  @experience * 0.25
      elsif (@experience- expected_quota) > 0
        @earnings = (@experience- expected_quota) * 0.5 + (expected_quota * 0.25 )
      else
        @earnings = (@experience * 0.25) -2
      end
      return @earnings
    end





  def quota
    50 + (@experience/2)
  end

  def report

    puts "I'm #{@name} ,I've delivered  #{@experience} papers and I've earned $ #{@earnings} so far"
  end

end

tommy = Paperboy.new("Tommy", "even")
puts tommy.deliver(100,200)

puts tommy.report
