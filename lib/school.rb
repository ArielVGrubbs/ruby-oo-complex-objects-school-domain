# code here!
class School
    attr_accessor :roster, :student
    def initialize (roster)
        @roster = roster
        @roster = {}
    end
    def add_student (student, grade)
        (@roster[grade] ||= []) << student
        return @roster
    end
    def grade (grade)
        @roster[grade]
    end
    def sort
        p @roster
        @roster = @roster.sort.to_h
        @roster = @roster.each do |key, value|
            value.sort!
        end
        return @roster
    end
end