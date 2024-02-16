
// 1
struct Calculator {
    
    func sum(_ n1: Int, _ n2: Int) -> Int {
        return n1 + n2
    }
    
    func multiply(_ n1: Int, _ n2: Int) -> Int {
        return n1 * n2
    }
}

var calulator = Calculator()
calulator.sum(4, 6)
calulator.multiply(3, 7)

// n2
class Todo {
    
    var tasks: [String]
    
    init(tasks: [String]) {
        self.tasks = tasks
    }
    
    func addTask(taskToAdd task: String) {
        self.tasks.append(task)
    }
    
    func deleteAllTask() {
        self.tasks.removeAll()
    }
    
    func showAllTask() {
        var taskToShow = ""
        for task in self.tasks {
            taskToShow += task + " "
        }
    }
    
}

var todotask = Todo(tasks: [])

todotask.addTask(taskToAdd: "Do yoga")
todotask.addTask(taskToAdd: "Programming")
todotask.addTask(taskToAdd: "Walk with my dog")

todotask.deleteAllTask()

// 3
struct Bot {
    static func greeting() {
        print("Wellcome isthebetadev!")
    }
    static func sum(_ n1: Int, _ n2: Int) -> Int {
        return n1 + n2
    }
}

Bot.greeting()
Bot.sum(15, 23)
