def find(id)
  @candidates.detect {|x| x[:id] == id ? x : nil}
end

def experienced?(candidate)
  yes_to_exp = candidate[:years_of_experience] >= 2
  return "Candidate has the requested years of experience: #{yes_to_exp}"
end
