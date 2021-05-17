class CustomerOrder
    attr_reader :bill, :name
    def initialize(name)
        # initialize instance variable name
        @name = name
        @bill = 0
    end

    def welcome_msg
        p "welcome to Nands kitchen, choose an item from the menu or enter exit to quit the menu"
    end

    def menu
        # define the menu items with its price as a hash
        menu_items = {"1.Nachos" => 10, "2.Pizza" => 15, "3.fries" => 8}
        # update the menu list (contains item number and price) with the right price if the menu items are updated otherwise CODE WILL NOT WORK        
        @menu_list = {1 => 10, 2 => 15, 3 => 8}
        # loop through menu items and display in a nice format
        menu_items.each do|item, price|
            p "#{item} ----- #{price}"
        end
    end

    def get_item_price(user_choice)
        # fetch the price from the menu list
        @item_price = @menu_list[user_choice]
    end
    def get_quantity
        puts "How many would you like"
        @quantity = gets.chomp.to_i
    end
    def calculate_bill
        # calculate the total bill
        @bill += @item_price * @quantity
    end

    def place_order(user_choice)
        get_item_price(user_choice)
        get_quantity
        calculate_bill
    end
end