//MARK: Reference
//https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

//PASSING

func hourGlassSum(arr: [[Int]]) -> Int {
    var list: [Int] = []
    for j in 0..<arr.count {
        for i in 0..<arr[j].count {
            if j != 0 && j != arr.count-1 && i != 0 && i != arr[j].count-1 {
                let sum = arr[j][i] + arr[j-1][i-1] + arr[j-1][i] + arr[j-1][i+1] + arr[j+1][i-1] + arr[j+1][i] + arr[j+1][i+1]
                list.append(sum)
            }
        }
        
    }
    
    return list.max()!
}


hourGlassSum(arr: [[0,0,0,0],[1,1,1,1],[2,2,2,2],[3,3,3,3]])
