def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  return shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length()
end

def pets_by_breed(shop, breed)
  breed_array = []
  for pet in shop[:pets]
    breed_array.push(pet) if pet[:breed] == breed
  end
  return breed_array
end

def find_pet_by_name(shop, name)
  pet_hash = nil
  for pet in shop[:pets]
    pet_hash = pet if pet[:name] == name
  end
  return pet_hash
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete_at(shop[:pets].index(pet))
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# # OPTIONAL

def customer_can_afford_pet(customer, pet)
  return true if customer[:cash]>=pet[:price]
  return false
end

def sell_pet_to_customer(shop, pet, customer)
  return if pet == nil
  if customer[:cash] > pet[:price]
    customer[:pets].push(pet)
    customer[:cash] -= pet[:price]
    shop[:admin][:total_cash] += pet[:price]
    remove_pet_by_name(shop, pet[:name])
    shop[:admin][:pets_sold] += 1
  end
end
