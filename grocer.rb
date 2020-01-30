require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs]
   i = 0


  while i < collection.length

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
    if array.include?(cart[i]) #array.include?(cart[0][:item])
        hash=cart[i]
        hash[:count]=1exit
        aindex = array.index(cart[i])
        array[aindex][:count] += 1
    else
      array[i] = cart[i]
      array [i][:count] = 1
    end
    i=i+1
  end
  return array
end
cart = [{:item=>"AVOCADO", :price=>3.0, :clearance=>true},
 {:item=>"AVOCADO", :price=>3.0, :clearance=>true},
 {:item=>"KALE", :price=>3.0, :clearance=>false}]
 puts consolidate_cart(cart)

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
