# user story:
# user must be able to view the menu
# user should be able to choose a menu item
# user should be able to specify quantity of that item
# user should be able to order more than one item
# user should be able to exit the app
# user should be given the final bill which should be correctly calculated

# psuedocode 
# 1.display a welcome msg with instruction on how to use the app
# 2. display the menu items
# 3. get the user input
#     1. if the user chooses a menu item, ask for the quantity
#         1. get the item price and calulate the bill
#     2. if the user want to exit the app, then display the exit msg and exit the app

require_relative "customer_order.rb"

# instance of the cutsomer class
customer1 = CustomerOrder.new("Bob")
customer2 = CustomerOrder.new("Charlie")

# call the welcome_msg and menu method
customer.welcome_msg
# ordering = true
exit = false
# loop
until exit
    customer.menu
    # get the user input
    user_choice = gets.chomp.to_i
    case user_choice
    when 1,2,3
        customer.place_order(user_choice)
    when 0
        # ordering = false
        exit = true
        puts "thanks for visting #{customer.name} and your bill is #{customer.bill}"
    else
        puts "invalid choice type 1,2,3 or exit"
    end
end




