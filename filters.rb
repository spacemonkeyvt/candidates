def find(id)
  @candidates.detect {|person| person[:id] == id ? person : nil}
end

def experienced?(candidate)
  yes_to_exp = candidate[:years_of_experience] >= 2
  return "Candidate has the requested years of experience: #{yes_to_exp}"
end

def qualified_candidates
    @candidates.each do |person|
      return "#{person} is qualified!\n\n" if (person[:years_of_experience] >= 2) && (person[:github_points] >= 100) && (person[:languages] == ("Ruby" || "Python")) && ([:date_applied] >= 15.days.ago.to_date)) && ([:age] >= 18)
    end
end

# def qualified_candidates
#   #takes in all candidates
#   #returns candidates who
#     ## experienced? == true
#     ## [:github_points] >= 100
#     ## [:languages] == ("Ruby" || "Python")
#     ## [:date_applied] >= 15.days.ago.to_date)
#     ## [:age] >= 18

#     @candidates.each do |person|
#       return "#{person} is qualified!\n\n" if person[:years_of_experience] >= 2 && person[:github_points] >= 100 && person[:languages] == ("Ruby" || "Python") && [:date_applied] >= 15.days.ago.to_date) && [:age] >= 18
#     end
# end
