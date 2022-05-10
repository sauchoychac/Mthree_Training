# Sauchoy Chac 09/05/2022

# implement the classes listed below
class FoodItem:
    foodName = ""
    foodPrice = 0.0
    available = 0
    ordered = 0

    def __init__(self, FoodName, FoodPrice, Available):
        self.foodName = FoodName
        self.foodPrice = FoodPrice
        self.available = Available

    def order(self, number):
        ordered = ordered + number


class Burger(FoodItem):
    meat = ""
    condiment = ""

    def __init__(self, FoodName, FoodPrice, Available, Meat, Condiment):
        FoodItem.__init__(self, FoodName, FoodPrice, Available)
        self.meat = Meat
        self.condiment = Condiment


class Drink(FoodItem):
    cupSize = 0

    def __init__(self, FoodName, FoodPrice, Available, CupSize):
        FoodItem.__init__(self, FoodName, FoodPrice, Available)
        self.cupSize = CupSize


class Side(FoodItem):
    condiment = ""

    def __init__(self, FoodName, FoodPrice, Available, Condiment):
        FoodItem.__init__(self, FoodName, FoodPrice, Available)
        self.condiment = Condiment


class Combo(FoodItem):
    burger = []
    drink = []
    side = []

    def __init__(self, FoodName, FoodPrice, Available, Burger, Drink, Side):
        FoodItem.__init__(self, FoodName, FoodPrice, Available)
        self.burger = Burger
        self.drink = Drink
        self.side = Side


class Order:
    orderName = ""
    orderPrice = 0.0
    foodItems = []

    def __init__(self, OrderName):
        self.orderName = OrderName

    def addItem(self, Item):
        self.foodItems.append(Item)


menuBurgers = []
hamburger = Burger("Hamburger", 2, 10, "ham", "Ketchup")
beefBurger = Burger("Beefburger", 3, 11, "beef", "Ketchup")
mayoChicken = Burger("Mayo Chicken", 1, 15, "chicken", "Mayonnaise")
menuBurgers.append(hamburger)
menuBurgers.append(beefBurger)
menuBurgers.append(mayoChicken)


menuDrinks = []
water = Drink("Water", 1, 100, 2)
coke = Drink("Coke", 1.90, 50, 2)
coffee = Drink("Coffee", 2, 40, 1)
tea = Drink("Tea", 2, 40, 1)
menuDrinks.append(water)
menuDrinks.append(coke)
menuDrinks.append(coffee)
menuDrinks.append(tea)


menuSides = []
fries = Side("Fries", 1, 10, "Ketchup")
salad = Side("Salad", 2, 40, "Sour Cream")
icecream = Side("Ice Cream", 2.50, 1, "Chocolate")
menuSides.append(fries)
menuSides.append(salad)
menuSides.append(icecream)

menuCombos = []
kidsCombo = Combo("KidsCombo", 1.50, 40, hamburger, water, fries)
kingCombo = Combo("King", 5, 40, beefBurger, coffee, fries)
menuCombos.append(kidsCombo)
menuCombos.append(kingCombo)


def user_input_burger():

    print("Available burgers:")
    for burgers in menuBurgers:
        if burgers.available > 0:
            print(burgers.foodName)
        else:
            print("These Items are no longer available: ")
            print(burgers.foodName)
    order = 0
    while order == 0:
        userBurgerChoice = input(
            "Please enter your choice or enter 0 to go back to the menu: ").lower()
        if userBurgerChoice.isdigit():
            if int(userBurgerChoice) == 0:
                return 0
        for burgers in menuBurgers:
            if userBurgerChoice == burgers.foodName.lower():
                burgers.available = burgers.available - 1
                b = burgers
                order = 1
                return b

        print("Wrong input. Please try again.")
    # ask user for input and store it in burger object


def user_input_drink():
    print("Available drinks:")
    for drinks in menuDrinks:
        if drinks.available > 0:
            print(drinks.foodName)
        else:
            print("These Items are no longer available: ")
            print(drinks.foodName)
    order = 0
    while order == 0:
        userDrinkChoice = input(
            "Please enter your choice or enter 0 to go back to the menu: ").lower()
        if userDrinkChoice.isdigit():
            if int(userDrinkChoice) == 0:
                return 0
        for drinks in menuDrinks:
            if userDrinkChoice == drinks.foodName.lower():
                drinks.available = drinks.available - 1
                d = drinks
                return d
                order = 1

        print("Wrong input. Please try again.")
    # ask user for input and store it in drink object


def user_input_side():
    print("Available sides:")
    for sides in menuSides:
        if sides.available > 0:
            print(sides.foodName)
        else:
            print("These Items are no longer available: ")
            print(sides.foodName)
    order = 0
    while order == 0:
        userSidesChoice = input(
            "Please enter your choice or enter 0 to go back to the menu: ").lower()
        if userSidesChoice.isdigit():
            if int(userSidesChoice) == 0:
                return 0
        for sides in menuSides:
            if userSidesChoice == sides.foodName.lower():
                sides.available = sides.available - 1
                s = sides
                return s
                order = 1
        print("Wrong input. Please try again.")
    # ask user for input and store it in side object


def user_input_combo():
    print("Available combos:")
    for combos in menuCombos:
        if combos.available > 0:
            print(combos.foodName)
        else:
            print("These Items are no longer available: ")
            print(combos.foodName)
    order = 0
    while order == 0:
        userCombosChoice = input(
            "Please enter your choice or enter 0 to go back to the menu: ").lower()
        if userCombosChoice.isdigit():
            if int(userCombosChoice) == 0:
                return 0
        for combos in menuCombos:
            if userCombosChoice == combos.foodName.lower():
                combos.available = combos.available - 1
                c = combos
                return c
                order = 1
        print("Wrong input. Please try again.")
    # ask user for input and store it in combo object
    # a combo must include one burger, one side, and one drink


def take_order():
    username = input("Please enter your name: ")
    newOrder = Order(username)

    next = 0
    print("Welcome to the Burger Shop")

    while next != 1:

        print("Please, select an item from the available menu: ")
        print("Enter 1 for Burgers")
        print("Enter 2 for Drinks")
        print("Enter 3 for Sides")
        print("Enter 4 for Combos")
        print("Enter 8 to check order details")
        print("Enter 9 to finish your order")
        print("Enter 0 to Cancel your order and Exit")
        firstChoice = input("")

        if int(firstChoice) == 1:

            itemToOrder = user_input_burger()
            if itemToOrder != 0:
                newOrder.addItem(itemToOrder)
                print("Your choice '" + itemToOrder.foodName +
                      "' was added to order.")
                newOrder.orderPrice = newOrder.orderPrice + itemToOrder.foodPrice
        elif int(firstChoice) == 2:

            itemToOrder = user_input_drink()
            if itemToOrder != 0:
                newOrder.addItem(itemToOrder)
                print("Your choice '" + itemToOrder.foodName +
                      "' was added to order.")
                newOrder.orderPrice = newOrder.orderPrice + itemToOrder.foodPrice
        elif int(firstChoice) == 3:

            itemToOrder = user_input_side()
            if itemToOrder != 0:
                newOrder.addItem(itemToOrder)
                print("Your choice '" + itemToOrder.foodName +
                      "' was added to order.")
                newOrder.orderPrice = newOrder.orderPrice + itemToOrder.foodPrice

        elif int(firstChoice) == 4:

            itemToOrder = user_input_combo()
            if itemToOrder != 0:
                newOrder.addItem(itemToOrder)
                print("Your choice '" + itemToOrder.foodName +
                      "' was added to order.")
                newOrder.orderPrice = newOrder.orderPrice + itemToOrder.foodPrice

        elif int(firstChoice) == 0:
            next = 1
            print("Thank you for your business.")

        elif int(firstChoice) == 8:
            print(" ")
            print(newOrder.orderName + " ordered: ")
            for items in newOrder.foodItems:
                print(items.foodName)
            print("Total Price: £" + str(newOrder.orderPrice))
        elif int(firstChoice) == 9:
            next = 1
            print(" ")
            print(newOrder.orderName + " ordered: ")
            for items in newOrder.foodItems:
                print(items.foodName)
            print("Total Price: £" + str(newOrder.orderPrice))
            print("Thank you for your business.")

        else:
            print("Wrong input. Please try again.")


take_order()
