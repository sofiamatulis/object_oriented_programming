
class Person
  def initialize (name)
    @name=name


def greeting
    "Hi, my name is #{name}".
  end

class Student < Person
  def learn
    "I get it"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end

end

c = Instructor.new("Chris")
c.greeting
