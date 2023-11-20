import Foundation

protocol Task {
    var priority: Int { get }

    func addDependency(_ task: Task)
}

class TaskManager {

    func add(_ task: Task) -> Void {

    }

}
