require "pry"

def find_item_by_name_in_collection(name, collection) #Destructive
  # Implement me first!
  # Consult README for inputs and outputs]
   i = 0
  while i < collection.length
    if collection[i][:item] == name
      return  collection[i]
    end
      i=i+1
    end
    return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  i=0
  array =[]
  while i < cart.length
<<<<<<< HEAD
  #  binding.pry
    itemname=cart[i][:item]
    if find_item_by_name_in_collection(itemname,array)
        #aindex = array.index(find_item_by_name_in_collection(itemname,array))
        #array[aindex][:count] += 1
        item = find_item_by_name_in_collection(itemname,array)
        item[:count] += 1
=======
    #binding.pry
    if array.include?(cart[i]) #array.include?(cart[0][:item])
        aindex = array.index(cart[i])
        array[aindex][:count] += 1
>>>>>>> 5497452c514841ed2c5eb5430b9f2b046b4e0933
    else
      cart[i][:count] = 1
      array << cart[i]
    end
    i=i+1
<<<<<<< HEAD
  end
  return array
end
=======
return array
  end
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

>>>>>>> 5497452c514841ed2c5eb5430b9f2b046b4e0933

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
    counter = 0
  while counter < coupons.length
    cart_item = find_item_by_name_in_collection(coupons[counter][:item],cart)
    coupons_item_name = "#{coupons[counter][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupons_item_name,cart)
      if cart_item && cart_item[:count]>= coupons[counter][:num]
        if cart_item_with_coupon
          cart_item_with_coupon[:count] += coupons[counter][:num]
          cart_item[:count]-= coupons[counter][:num]
        else
          cart_item_with_coupon = {
            :item => coupons_item_name,
            :price => coupons[counter][:cost] / coupons[counter][:num],
            :clearance => cart_item[:clearance],
            :count => coupons[counter][:num]
          }
          cart <<cart_item_with_coupon
          cart_item[:count] -= coupons[counter][:num]
        end
      end
    counter += 1
  end
  cart
end

items =[
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
  {:item => "ALMONDS", :price => 9.00, :clearance => false},
  {:item => "TEMPEH", :price => 3.00, :clearance => true},
  {:item => "CHEESE", :price => 6.50, :clearance => false},
  {:item => "BEER", :price => 13.00, :clearance => false},
  {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
  {:item => "BEETS", :price => 2.50, :clearance => false},
  {:item => "SOY MILK", :price => 4.50, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true}
]
ccart = consolidate_cart(items)
coupons = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00},
  {:item => "BEER", :num => 2, :cost => 20.00},
  {:item => "CHEESE", :num => 3, :cost => 15.00}
]
puts apply_coupons(ccart, coupons)


def apply_clearance(cart)
  # Consult README for inputs and outputs

  i=0
  while i<cart.length do
    if cart[i][:clearance]
      cart[i][:price]=(cart[i][:price] - (cart[i][:price]*0.20)).round(2)
    end
    i=i+1# REMEMBER: This method **should** update cart
end
return cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  consolidated_cart = consolidate_cart(cart)
  coupon_cart = apply_coupons(consolidated_cart,coupons)
  final_cart = apply_clearance(coupon_cart)
  t=0
  i=0
  while i < final_cart.length
    t=t+final_cart[i][:price]*final_cart[i][:count]
    i=i+1
  end
  if t > 100
    t = (t*0.9)
    t=t.round(2)
  end
  return t
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
