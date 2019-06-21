def consolidate_cart(cart)
  # code here
    new_cart={}
    cart.each do |item|
      if new_cart.include?(item.keys.first)
         new_cart[item.keys.first][:count] += 1
      else
         new_cart[item.keys.first] = item.values.first.merge({:count => 1})
      end
    end
  new_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
