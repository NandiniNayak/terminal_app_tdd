# Test cases:
# 1. test if the cutomer instance is created and if the customer has a readable name
# 2. should display a welcome msg
# 3. should read the menu
# 4. should be able to recive user choice
# 5. should be able to get the item price
# 6. should be able to choose the quantity
# 7. should be able to retrieve the final bill

describe CustomerOrder do
    before(:each) do
        # this piece of code runs before each test case defined in it block
        @customer = CustomerOrder.new("Bob")
    end
    it "instance must have  a readable name" do
        expect(@customer.name).to eq("Bob")
    end
    it "display's welcome msg" do
        msg = "welcome to Nands kitchen, choose an item from the menu or enter exit to quit the menu"
        expect(@customer.welcome_msg).to eq(msg)
    end
    it "Display the menu " do
        menu = {"1.Nachos" => 10, "2.Pizza" => 15, "3.fries" => 8}
        expect(@customer.menu).to eq(menu)
    end
    it "get item price based on user choice" do
        user_choice = 1 
        expect(@customer.get_item_price(user_choice)).to eq(10)
    end
    it "should get the quantity" do
        expect(@customer.get_quantity).to be > 0
    end
    it "should calculate the final bill" do
        # define your test dataset
        user_choice = 1
        final_bill = @customer.get_item_price(user_choice) * @customer.get_quantity
        expect(@customer.bill).to eq(final_bill)
    end
end
