class School

attr_accessor :roster, :name, :grade

    def initialize(roster)
    roster = {}
    @roster = roster
end

def add_student(name, grade)
    if roster.key?(grade) == false
        roster[grade] = []
    end
    roster[grade] << "#{name}"
end

def grade(grade)
    roster.fetch(grade)
end

def sort
    sorted_roster = {}
    roster.keys.each do |grade|
        sorted_roster[grade] = roster[grade].sort
    end
    sorted_roster
end

end