class Paperboy


    attr_reader :name, :experience, :side, :earnings

    def initialize (name,side)
      @name= name
      @side=side
      @experience=0


    end


    def quota
      50 + @experience/2
    end



    def deliver(start_address, end_address)
      @experience = (@experience + (end_address-start_address)/2)
      if @experience == 50
      then @experience * 0.25
    elsif @experience > 50
         then (50*0.25 + (@experience - 50)*0.5)
       elsif @experience < 50
          then (@experience*0.25)-2
          end
    end




def report

  puts "I'm #{name} ,I've delivered  #{quota} papers and I've earned #{deliver} so far"
end



end

tommy = Paperboy.new("Tommy", "even")
puts tommy.experience
