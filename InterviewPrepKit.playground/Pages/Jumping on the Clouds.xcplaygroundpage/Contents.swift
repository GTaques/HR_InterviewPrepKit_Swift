//MARK: Reference Link
// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

let array0 = [0,1,0,0]
let array1 = [0,0,1,0,0,0]
let array2 = [0,1,0,1,0,0]

func jump(array c: [Int]) -> Int {
    var jumps = 0
    var i = 0
    while i < c.count {
        if i+2 < c.count && c[i+2] == 0 {
            jumps += 1
            i += 2
            continue
        } else if i+1 < c.count && c[i+1] == 0 {
            jumps += 1
            i += 1
            continue
        }
        i+=1
    }
    return jumps
}

jump(array: array0)
jump(array: array1)
jump(array: array2)
