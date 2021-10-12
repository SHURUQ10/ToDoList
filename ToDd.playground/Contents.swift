import UIKit

enum TaskStatus {
    case completed
    case pending
}
struct Item {
    var day: String
    var title:String
    var details:String
    
}
class ToDo {
    var tasks : [Item] = []
    init(task:Item){
        self.tasks.append(task)
    }
        
        func add(addItem: Item){
            tasks.append(addItem)
      }
      func remove(remove : Int){
          
          if (remove > tasks.count - 1) {
              print ("Task Not available")
          } else {
              tasks.remove(at: remove)
          }
      }
    
    func update(index : Int ,update:Item) {
        tasks[index] = update
      }
    
      func read(){
          for item in self.tasks {
              print("\(item.title), \(item.details), \(item.day)")
          }
      }
}
var myList = ToDo(task: Item(day: "sunday", title: "appointment", details: "teeth appointment"))
myList.add(addItem: Item(day: "sanday", title: "go to coffee", details: "meeting friend"))
myList.remove(remove: 10)
myList.update(index: 0, update: Item(day: "monday", title: "go to coffee", details:"meeting friend" ))
myList.read()

[1,3,2,4,6].count
