# code here!
class School
    attr_accessor :roster, :student_name, :school_name
    def initialize(school_name)
    @school_name = school_name
    @roster = {}
    end
    # def name
    #     @name
    # end
    # def roster = {} #stop typing ROOSTER ha
    def add_student(student_name, grade)
        @roster[grade] ||= [] #from http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html - need to look more into this to understand what is actually happening
        @roster[grade] << student_name
    #    @roster << student_name
    end
    def grade(grade)
        @roster[grade]
    end 
    def sort
        # @roster.each do |student_name, grade| # doesn't work in this order name, grade
        @roster.each do |grade, student_name|    
        student_name.sort!
        end
    end
end


