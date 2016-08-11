class Paperboy


    attr_reader :name, :experience, :earnings

    def initialize (name,experience,side,earnings)
      @name= name
      @experience=experience
      @side=side
      @earnings=earnings


    end


    def side
      if @side % 2 == 0
        puts "even"
      else
        puts "odd"
    end
  end

    def quota
      50 + @experience/2
    end

    def deliver (start_address, end_address)
     if quota = 50
       then (@end_address - @start_address) * 0.25
     elsif quota > 50
       then (50*0.25 + (quota - 50)*0.5)
     elsif quota < 50
       then (50*0.25)-2
     end
   end


def report

  puts "I'm #{name} ,I've delivered  #{quota} papers and I've earned #{deliver} so far"
end





end
