class Rover
  def initialize (location_x, location_y, direction)
    @location_x = location_x
    @location_y = location_y
    @direction = direction
  end


  def read_instruction
    puts "Can you give me directions? M for move, R for right and L for left"
    answer = gets.chomp.split('')
     answer.each do |instruction|
       if instruction == "M"
         self.move # self calls a method within the class
       elsif instruction == "R"
         self.turn("R")
       elsif instruction == "L"
         self.turn("L")
       end
     end

     puts  "#{@location_x} #{@location_y} #{@direction}"
  end



  def move
    if @direction == "N"
      @location_y += 1
    elsif @direction == "E"
      @location_x +=1
    elsif @direction == "S"
      @location_y -= 1
    elsif @direction == "W"
      @location_x -= 1
    end
  end


  def turn(rotate)
    case rotate
    when "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "S"
        @direction =  "E"
      elsif @direction == "W"
        @direction = "S"
      end

    when "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      end

    end


  end

end
