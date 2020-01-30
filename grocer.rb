require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs]
   i = 0
  # binding.pry

  while i < collection.length
    #binding.pry
    if collection[i][:item] == name
      a = collection[i]
      end
      i=i+1
    end
    return a
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  i=0
  array =[]
  while i < cart.length
    #binding.pry
    if array.include?(cart[i]) #array.include?(cart[0][:item])
      array[array.index(cart[i][:item])][:count]+=1
    else
      array[i] = cart[i]
      array [i][:count] = 1
    end
    i=i+1
    binding.pry
  end


items =   [
    {:item => "AVOCADO", :price => 3.00, :clearance => true},
    {:item => "KALE", :price => 3.00, :clearance => false},
    {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
    {:item => "ALMONDS", :price => 9.00, :clearance => false},
    {:item => "TEMPEH", :price => 3.00, :clearance => true},
    {:item => "CHEESE", :price => 6.50, :clearance => false},
    {:item => "BEER", :price => 13.00, :clearance => false},
    {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
    {:item => "BEETS", :price => 2.50, :clearance => false},
    {:item => "SOY MILK", :price => 4.50, :clearance => true}
  ]
cart = [find_item_by_name_in_collection('TEMPEH', items), find_item_by_name_in_collection('PEANUTBUTTER', items), find_item_by_name_in_collection('ALMONDS', items)]
  consolidated_cart = consolidate_cart(cart)
  puts consolidated_cart
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
