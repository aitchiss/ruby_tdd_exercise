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

  for animal in pet_shop[:pets]

    pets << animal[:breed]

  end

  single_breed_array = []

  for breed_name in pets

    if breed_name == breed
      single_breed_array << breed_name
    end
  end

  return single_breed_array

end


def find_pet_by_name(pet_shop, pet_name)

  for single_pet in pet_shop[:pets]

    if single_pet[:name] == pet_name
      return single_pet
    end

  end

end
