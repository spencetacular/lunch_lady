meatloaf  = {dish_type: 'main', dish_descritpion: 'Meatloaf', price: 4.95, order_number: 1 }
sloppy_joe = {dish_type: 'main', dish_descritpion: 'Sloppy Joe', price: 5.37, order_number: 2}
pork_and_beans = {dish_type: 'side', dish_descritpion: 'Pork & Beans', price: 2.22, order_number: 1}

@menu = [meatloaf, sloppy_joe, pork_and_beans]

def print_menu_item(t)

  puts 'Press the numer next to the delicious and nutritious menu item your heart desires'
  
  @menu.each do |menu_item|
    if menu_item[:dish_type] == t
    puts "#{menu_item[:order_number].to_s}.#{menu_item[:dish_descritpion].to_s} \t $#{menu_item[:price]}"
    end
  end

end

print_menu_item('main')

print_menu_item('side')
