//MARK: Reference
//https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

//MARK: Don't pass
//func repeatedString(s: String, n: Int) -> Int {
//    var pointer = 0
//    var occurencies = 0
//    for i in 0..<n {
//        if pointer == s.count {
//            pointer = 0
//        }
//        if Array(s)[pointer] == "a" {
//            occurencies += 1
//        }
//        pointer += 1
//    }
//    return occurencies
//}

//MARK: Passing
func repeatedString(s: String, n: Int) -> Int {
    var occurencies = 0
    var prefixOccurencies = 0
    let whole = (n / s.count)
    let rest = n % s.count
    
    for c in Array(s) {
        if c == "a" {
            occurencies += 1
        }
    }
    if rest == 0 {
        return Int(occurencies * whole)
    } else {
        for c in s.prefix(rest) {
            if c == "a" {
                prefixOccurencies += 1
            }
        }
        return Int(occurencies * whole + prefixOccurencies)
    }
    
}

repeatedString(s: "aba", n: 7)


