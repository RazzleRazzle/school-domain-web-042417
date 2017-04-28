require 'pry'
class School
  attr_reader :name
  attr_accessor :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
       @roster[grade] << name
    else
        @roster[grade] = []
        @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
 end

  def sort
      @roster.each do  |k,v|
        sorted = v.sort_by {|s| s.chars.first}
        @roster[k] = sorted
    end
  end
end
