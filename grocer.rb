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
  #  binding.pry
    itemname=cart[i][:item]
    if find_item_by_name_in_collection(itemname,array)
        #aindex = array.index(find_item_by_name_in_collection(itemname,array))
        #array[aindex][:count] += 1
        item = find_item_by_name_in_collection(itemname,array)
        item[:count] += 1
    else
      cart[i][:count] = 1
      array << cart[i]
    end
    i=i+1
  end
  return array
end

cart = [{:item=>"AVOCADO", :price=>3.0, :clearance=>true},
 {:item=>"AVOCADO", :price=>3.0, :clearance=>true},
 {:item=>"KALE", :price=>3.0, :clearance=>false}]

ccart = consolidate_cart(cart)

 vm = find_item_by_name_in_collection("AVOCADO",ccart)
 puts vm

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  j=0
  discountedItems = []
  array = cart
      while j<coupons.length do
          binding.pry
        item = coupons[j][:item]
        operator = find_item_by_name_in_collection(item,cart)
        if find_item_by_name_in_collection(item,cart)
          numPerCoupon=find_item_by_name_in_collection(item,coupons)[:num]
          countPerCart = find_item_by_name_in_collection(item,cart)[:count]
          costPerCoupon = find_item_by_name_in_collection(item,coupons)[:cost]
          clearance = find_item_by_name_in_collection(item,cart)[:clearance]
          times_used=countPerCart/numPerCoupon
          updatedUnitPrice = costPerCoupon/numPerCoupon
          if numPerCoupon/countPerCart>0
            operator[:count]=operator[:count]-numPerCoupon*times_used

            newTerm = {
              :item => "#{item} W/COUPON",
              :price => updatedUnitPrice,
              :clearance => clearance,
              :count => times_used*numPerCoupon
              }
            array << newTerm
          end

        #array[array.index(find_item_by_name_in_collection(item,cart))]

        end
      j+=1
    # REMEMBER: This method **should** update cart
     end
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
