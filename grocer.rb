require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs]
   i = 0
  # binding.pry

  while i < collection.length
    binding.pry
    if collection[i][:item] == name
      a = collection[i][:item]
      end
      i=i+1
    end
    a
end
collection = [
  { :item => "DOG FOOD" },
  { :item => "WINE" },
  { :item => "STRYCHNINE" }
]
name = "WINE"
puts find_item_by_name_in_collection(name,collection)

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
