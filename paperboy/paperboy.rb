class Paperboy


    attr_reader :name, :experience, :side,  :earnings

    def initialize (name,side)
      @name= name
      @side=side
      @experience=0
      @earnings = 0

    end




    def deliver(start_address, end_address)
      paper_delivered = 0
      if side == "odd"
        start_address..end_address.each do |address|
          if address % 2 != 0
             paper_delivered += 1
           end
         end
       end
       if side == "even"
         start_address..end_address.each do |address|
           if address % 2 == 0
             paper_delivered += 1
           end
         end
        end

      if (papers_delivered- @quota )== 50
        then
        @earnings = papers_delivered * 0.25
      elsif papers_delivered > 50
        then
        @earnings = papers_delivered

    end


  def earnings

    return @earnings
  end


  def update_earnings

    total = @houses_delivered - quota


    if total < 0
      then updates_earnings - 2
    elsif  total > 0
      then updated_earnings + 0.5 * (@houses_delivered - quota)






  def quota
    50 + (@experience/2)
  end








def report

  puts "I'm #{name} ,I've delivered  #{quota} papers and I've earned #{deliver} so far"
end



end

tommy = Paperboy.new("Tommy", "even")
puts tommy.experience
