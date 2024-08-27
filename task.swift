// 1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). 
// Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
// 3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
// 4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
// 5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.

enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case hawaiian
    case meatLovers
}

enum Toppings {
    case pepperoni
    case tomatoes
    case cheese
}

struct Pizza {
    let price: Double
    let type: PizzaType
    let crust: String // Толстое или тонкое тесто
    let toppings: [Toppings]
}

class Pizzeria {
    private var pizzas: [Pizza] = []

    init() {
        pizzas.append(Pizza(price: 10.0, type: .margherita, crust: "Thin", toppings: [.cheese]))
        pizzas.append(Pizza(price: 12.0, type: .pepperoni, crust: "Thick", toppings: [.pepperoni, .cheese]))
    }

    func addPizza(newPizza: Pizza) {
        pizzas.append(newPizza)
    }

    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}

let pizzeria = Pizzeria()
let newPizza = Pizza(price: 15.0, type: .vegetarian, crust: "Thin", toppings: [.tomatoes, .cheese])
pizzeria.addPizza(newPizza: newPizza)

let allPizzas = pizzeria.getAllPizzas()
for pizza in allPizzas {
    print("Pizza: \(pizza.type), Price: $\(pizza.price), Crust: \(pizza.crust), Toppings: \(pizza.toppings)")
}