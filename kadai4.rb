class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  def get_string
    return "#{self.name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end
  def get_string
    return "#{self.name} #{price} vnd (#{self.size}サイズ)"
  end
end

menu1 = Menu.new(name:"Phở",price:30000)

menu2 = Menu.new(name:"Bún chả",price:40000)

menu3 = Menu.new(name:"Bánh mì",price:20000)

drink1 = Drink.new(name:"Trà",price:5000,size:"S")

drink2 = Drink.new(name:"Trà",price:10000,size:"M")

menus = []
menus.push(menu1,menu2,menu3,drink1,drink2)

menus.each_with_index do |menu,i|
print "#{i}. "
puts menu.get_string
end

puts "----------------"
print "メニューの番号を選択してください > "
order = gets.to_i
selected_menu = menus[order]
puts "選択されたメニュー：#{selected_menu.name}"
puts "お合計は#{selected_menu.price}vndです"
