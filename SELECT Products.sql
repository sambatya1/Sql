/* 
Для выбора всех пар «Имя продукта – Имя категории» следует использовать оператор LEFT JOIN, 
чтобы включить в результат даже те продукты, у которых нет категорий. 
Запрос будет выглядеть следующим образом:
*/

SELECT Products.ProductName, Categories.CategoryName
FROM Products
LEFT JOIN ProductCategory
ON Products.ProductID = ProductCategory.ProductID
LEFT JOIN Categories
ON ProductCategory.CategoryID = Categories.CategoryID;



/*Здесь используется таблица Products, содержащая информацию о продуктах, 
таблица Categories, содержащая информацию о категориях, 
и таблица ProductCategory, которая связывает продукты и категории по их ID.

Оператор LEFT JOIN используется для связывания таблиц Products и ProductCategory, 
чтобы включить все продукты в результат, даже если у них нет категорий. 
Затем используется оператор LEFT JOIN, чтобы связать таблицу ProductCategory и таблицу Categories 
и получить имя категории для каждого продукта.

Таким образом, этот запрос выберет все пары «Имя продукта – Имя категории», включая продукты без категорий.
*/