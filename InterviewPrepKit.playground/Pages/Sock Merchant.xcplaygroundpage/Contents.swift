//MARK: Reference
//https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

func sockMerchant(n: Int, ar: [Int]) -> Int {
    let arr = ar.sorted(by: < )
    var numOfPairs = 0
    var index = 0
    for _ in 0..<n {
        if index + 1 < n {
            if arr[index] == arr[index + 1] {
                numOfPairs += 1
                index+=2
                continue
            }
        }
        index += 1
    }
    return numOfPairs
}

sockMerchant(n: 7, ar: [1,2,1,2,1,3,2])
