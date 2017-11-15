# :nodoc:
class School
  def initialize
    @roster = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    @roster[grade].sort
  end

  def add(student, grade)
    @roster[grade] << student
  end

  def students_by_grade
    @roster.keys.sort.map { |g| { grade: g, students: students(g) } }
  end
end

module BookKeeping
  VERSION = 3
end
