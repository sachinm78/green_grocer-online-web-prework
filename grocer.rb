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
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  end
  cart
end


def apply_clearance(cart)
  # code here
end


def checkout(cart, coupons)
  consolidated_cart = consolidate_cart(cart)
end
