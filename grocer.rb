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
  cart.keys.each do |item|
    coupons.each do |coupon|
      if item == coupon[:item] && cart[item][:count] >= coupon[:num]
        cart[item][:count] -= coupon[:num]
        if cart["#{coupon[:item]} W/COUPON"]
          cart["#{coupon[:item]} W/COUPON"][:count] += 1
        else
          cart["#{coupon[:item]} W/COUPON"] = {:price => coupon[:cost], :clearance => cart[item][:clearance], :count => 1}
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
