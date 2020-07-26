//MARK: Reference
//https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays


// MARK: Not Passing
//func leftRotation(a: [Int], d: Int) -> [Int] {
//    var aux = 0
//    var a = a
//    for _ in 0..<d {
//        for n in a.indices {
//            if n == 0 {
//                aux = a[n]
//            } else {
//                a[n-1] = a[n]
//            }
//        }
//        a[a.count-1] = aux
//    }
//    return a
//}

func leftRotation(a: [Int], d: Int) -> [Int] {
    let mod = d % a.count
    var arr: [Int] = []

    for i in 0..<a.count {
        arr.append(a[(i + mod) % a.count])
    }
    print(arr)
    return arr
}

leftRotation(a: [1,2,3,4,5], d:4)
