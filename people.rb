
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

ch = Student.new("Christina")
ch.greeting


ch.learn  # --> it works because Christina is a student and the learn method is inside of this subclass
ch.teach  # --> it does not work because Christina is a student and the learn method is inside of the instructor class
c.learn # --> it works because Chris is an instructor  and the learn method is inside of this subclass
c.teach  # --> it does not work because Chris is an instructor  and the learn method is inside of the student class 
