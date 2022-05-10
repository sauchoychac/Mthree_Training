# Sauchoy Chac 08/05/2022

# Initliase Variables
cupSize = ""
coffeeType = ""
syrup = ""
syrupType = ""
cost = 0

while not (cupSize == "small") and not (cupSize == "medium") and not (cupSize == "large"):
    cupSize = input(
        "Do you want small, medium, or large? ").lower()
    if not (cupSize == "small") and not (cupSize == "medium") and not (cupSize == "large"):
        print("Invalid input. Try again.")

if (cupSize == "small"):
    cost += 2.00
elif (cupSize == "medium"):
    cost += 3.00
elif (cupSize == "large"):
    cost += 4.00

# ===================================================================================================================

while not (coffeeType == "brewed") and not (coffeeType == "espresso") and not (coffeeType == "cold press"):
    coffeeType = input(
        "Do you want brewed, espresso, or cold press? ").lower()
    if not (coffeeType == "brewed") and not (coffeeType == "espresso") and not (coffeeType == "cold press"):
        print("Invalid input. Try again.")

if (coffeeType.lower() == "espresso"):
    cost += 0.50
elif (coffeeType.lower() == "cold press"):
    cost += 1.00


# ===================================================================================================================

while not (syrup.lower() == "yes") and not (syrup.lower() == "no"):
    syrup = input(
        "Do you want a flavored syrup? (Yes or No) ").lower()
    if not (syrup == "yes") and not (syrup == "no"):
        print("Invalid input. Please enter either Yes or No")


if (syrup == "yes"):
    syrup = " with "
    cost = cost + 0.5
    while not (syrupType == "hazelnut") and not (syrupType == "vanilla") and not (syrupType == "caramel"):
        syrupType = input(
            "Do you want hazelnut, vanilla, or caramel? ").lower()
        if not (syrupType == "hazelnut") and not (syrupType == "vanilla") and not (syrupType == "caramel"):
            print("Wrong input. Try again.")
else:
    syrup = ""

# ===================================================================================================================

costTip = cost * 1.15
print("You asked for a " + cupSize + " cup of " +
      coffeeType + " coffee" + syrup + syrupType + ".")
print("Your cup of coffee costs " + str(cost))

# print in more readable form
print(f"The price with a tip is {costTip:.2f}")
