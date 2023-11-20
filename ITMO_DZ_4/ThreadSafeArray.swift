import Foundation

class ThreadSafeArray<T>  {
    private var array: [T] = []
}

extension ThreadSafeArray: RandomAccessCollection {
    typealias Index = Int
    typealias Element = T

    var startIndex: Index { return array.startIndex }
    var endIndex: Index { return array.endIndex }

    subscript(index: Index) -> Element {
        get { return array[index] }
    }

    func index(after i: Index) -> Index {
        return array.index(after: i)
    }
}
