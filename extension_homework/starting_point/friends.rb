def get_name(person)
  return person[:name]
end

def get_fave_tv_show(person)
  return person[:favourites][:tv_show]
end

def get_if_like_food(person, food)
  result = false
  for item in person[:favourites][:things_to_eat]
    result = true if item == food
  end
  return result
end

def add_new_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people_array)
  total = 0
  for person in people_array
    total += person[:monies]
  end
  return total
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_favourite_foods(people_array)
  faves = []
  for person in people_array
    faves += person[:favourites][:things_to_eat]
  end
  return faves
end

def billy_no_mates(people_array)
  no_mates = []
  for person in people_array
    no_mates.push(person) if person[:friends].count == 0
  end
  return no_mates
end
