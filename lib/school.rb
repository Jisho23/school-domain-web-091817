# code here!

class School

  attr_accessor :name, :roster

  def initialize(school_name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each { |grade, students| sorted_hash[grade] = students.sort }

    sorted_hash
  end

end
