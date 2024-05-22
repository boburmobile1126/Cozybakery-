
import Foundation
struct Dessert : Identifiable , Hashable {
    public var id: Int
    public var image: String
    public var name: String
    public var price: String
    public var description: String
   
}
var dessertData = [
    Dessert(id: 0, image: "desert1", name: "Вишнёвый чизкейк", price: "25.000", description: " Нежный чизкейк со сливочной текстурой, покрытый густым вишнёвым соусом и украшенный свежими вишнями."),
    Dessert(id: 1, image: "desert2", name: "Тарталетки", price: "10.000", description: "Хрустящие корзиночки с разнообразными начинками, от фруктовых до кремовых, для любого вкуса."),
    Dessert(id: 2, image: "desert3", name: "Тирамису", price: "20.000", description: "Классический итальянский десерт с воздушным кремом маскарпоне, пропитанными кофе бисквитами и присыпанный какао."),
    Dessert(id: 3, image: "desert4", name: "Шоколадные круассаны", price: "18.000", description: "Слоёные, воздушные круассаны с хрустящей корочкой, идеальные для завтрака или легкого перекуса."),
    Dessert(id: 4, image: "desert5", name: "Брауни", price: "26.000", description: "Плотные, насыщенные шоколадные пирожные с влажной текстурой и насыщенным вкусом какао."),
    Dessert(id: 5, image: "desert6", name: "Печенье с кусочками шоколада", price: "5.000", description: "Мягкое печенье с крупными кусочками темного шоколада, идеально сочетающееся с чашечкой кофе или чая.")
]
