def consolidate_cart(cart)
  organized_cart = {}
  cart.each do |element|
    element.each do |food, hash|
      organized_cart[food] ||= hash
      organized_cart[food][:count] ||= 0
      organized_cart[food][:count] += 1
    end
  end
  return organized_cart
end


def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    name = coupon[:item]
    
  end
  cart
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
