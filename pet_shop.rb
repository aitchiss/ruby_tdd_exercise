def pet_shop_name(pet_shop)
  name = pet_shop[:name]
  return name
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets)
  pet_shop[:admin][:pets_sold] += number_of_pets
end

def stock_count(pet_shop)
  stock = pet_shop[:pets].length
  return stock
end


def pets_by_breed(pet_shop, breed)
  
  pets = []

  for single_pet in pet_shop[:pets]
    if single_pet[:breed] == breed
      pets << single_pet
    end
  end

return pets
  
end


def find_pet_by_name(pet_shop, pet_name)

  for single_pet in pet_shop[:pets]

    if single_pet[:name] == pet_name
      return single_pet
    end

  end

  return nil
end

def remove_pet_by_name(pet_shop, pet_name)

  for single_pet in pet_shop[:pets]
    if single_pet[:name] == pet_name
      pet_shop[:pets].delete(single_pet)
    end
  end

end


def add_pet_to_stock(pet_shop, new_pet)

  pet_shop[:pets].push(new_pet)

end


def customer_pet_count(customer)

  return customer[:pets].length

end


def add_pet_to_customer(customer, new_pet)

  customer[:pets] << new_pet

end


def customer_can_afford_pet(customer, new_pet)

  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end

end