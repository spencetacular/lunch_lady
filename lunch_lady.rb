meatloaf  = {dish_type: 'main', dish_descritpion: 'Meatloaf', price: 4.95, order_number: 1 }
sloppy_joe = {dish_type: 'main', dish_descritpion: 'Sloppy Joe', price: 5.37, order_number: 2}
pork_and_beans = {dish_type: 'side', dish_descritpion: 'Pork & Beans', price: 2.22, order_number: 3}
mac_and_cheese = {dish_type: 'side', dish_descritpion: 'Mac & Cheese', price: 1.89, order_number: 4}

SIDES_ALLOWED = 2
MAINS_ALLOWED = 1
@total_items_allowed = SIDES_ALLOWED + MAINS_ALLOWED
@max_number_items = 2

@total = 0.0

@menu = [meatloaf, sloppy_joe, pork_and_beans, mac_and_cheese]
@order = []

def print_menu_items(item)
  puts 'Press the numer next to the delicious and nutritious menu item your heart desires'
  
  @menu.each do |menu_item|
    if menu_item[:dish_type] == item
    puts "#{menu_item[:order_number].to_s}.#{menu_item[:dish_descritpion].to_s} \t $#{menu_item[:price]}"
    end 
  end

end

def print_order
  puts '*******************************'
  puts 'Order:'
  
  @order.each do |menu_item|
  puts "#{menu_item[:order_number].to_s}.#{menu_item[:dish_descritpion].to_s} \t $#{menu_item[:price]}"
  end

  puts "Total: \t \t $#{@total}"
  puts "Please pay your (not so friendly) lunch lady."
  
end

def get_user_input(dish_type)
  print_menu_items(dish_type)
  item = gets.strip
  return item
end


# def input_check(input)
#   if input.to_i == 0 || input.to_i > @max_number_items
#   puts "Invalid Entry: Please start over" 
  
#   end
# end

#print_menu_item('main')
def add_item_to_order(item)
  
    #input_check(dish_type)
    @menu.each do |menu_item|
    
    if menu_item[:order_number].to_s == item
      @order << menu_item
      @total += menu_item[:price].to_f
      puts "#{menu_item[:dish_descritpion].to_s} added to order\tTotal: $#{@total}"
    end

  end
    
end

def process_order
  items_ordered = 0

  while items_ordered <= @total_items_allowed
      if items_ordered < MAINS_ALLOWED
      item = get_user_input('main')
      add_item_to_order(item)
    elsif items_ordered <= SIDES_ALLOWED
      item = get_user_input('side')
      add_item_to_order(item)
    end

    if items_ordered == @total_items_allowed -1
      print_order
    end

    items_ordered += 1

  end

end

process_order





















