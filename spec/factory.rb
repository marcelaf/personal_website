Factory.define :product do |u|
    u.name "bread"
    u.description "bread for sandwiches"
end

Factory.define :order do |r|
	r.customer "Maria"
	r.date '2011-09-10'
end

Factory.define :order_item do |m|
	m.quantity 10
	m.association :order, :factory => :order
  m.association :product, :factory => :product
end
