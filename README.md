1.Class:
We created a set of classes, each with a set of methods and attributes. We have the menu_ites class, in which we define the item name and price.
We also have the order class, which contains all the customer-specific methods, 
such as adding an item to the order or updating or removing a specific item in the order.
After that, we have an abstract class, the user class, in the user.dart file. 
We used it to inherit it from the customer and admin classes, 
so they can use the attribute and function inside it to identify the admin and customer and print them. 
Then, in the customer class, there are a set of functions that we use to give the customer permissions to place an order, 
delete an item from the order, or edit the order. Then, there is another permission to view the order after placing it and give it the total price. 
Finally, we have the admin class, which has other permissions. It allows the admin to view the menu, of course, or delete a specific item from the menu, 
or modify a specific item in terms of price, item name, or both. Then, in the Restaurant class, this is the class that defines the menu items.

2.Object:
In the Customer class, there is an object called Order. 
We created an object from the Order class so that we can use or access the function and attribute inside this class.


3.Constructor:
We used a Constructor in the MenuItem class and sent it an argument so that when we create the object, we assign values to both the name and price.
In the User class, we use a Constructor to assign or give it the name of the person. 
We also created a Constructor in the Customer class and the Admin class to send it the name.


4.Method:
In the MenuItem class, we created the display() method to print the price and name. 
In the Order class, we have a set of methods, such as void addItem(MenuItem item), which is a function that adds an item to the order when the customer places an order.
Then, the void removeItem(String itemName), which removes the name of the item we sent as the order argument. There is also the showOrder method, 
which displays the order requested by the customer. There are also a set of methods in the Customer class, namely displayRole, 
which displays whether the person is a customer or admin, and the browseMenu method, which displays the menu.
The addToOrderByName method adds an item to the order the customer will request. 
The modifyOrder method modifies an item from the order. The removeFromOrder method removes an item from the order.
The showMyOrder method displays the order the customer requested with the total price. In the Restaurant class, there is a function called getMenu, 
and its function is to return Current menu.



5.Property (Field/Attribute):
In the MenuItem class there are 2 attributes, which are price and name. In the order class there is a List<MenuItem> item, 
this is a list whose type is MenuItem. This is a list in which we will put the order that will be requested.


6.Encapsulation:
Of course, there is Encapsulation in the MenuItem class, because we made the elements price and name private. 
In the admin class, there is a variable of type private.


7.Inheritance: There is inheritance in the customer and admin classes, and they inherit from the user class to use the attribute and function inside the user class.



8.Polymorphism:
In the user class, we created an abstract class with a display function inside it. 
Therefore, we will use it in the admin and customer classes to print if they are admin or customer.
