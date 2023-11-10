
let t = Int(readLine()!)!
for _ in 0..<t {
    let s = readLine()!
    count = 0

    print(isPalindrome(s: s), count)
}

var count = 0

func recursion(s: String, l: Int, r: Int) -> Int {
    count += 1

    if l >= r {
        return 1
    } else if s[l] != s[r] {
        return 0
    } else {
        return recursion(s: s, l: l + 1, r: r - 1)
    }
}

func isPalindrome(s: String) -> Int {
    return recursion(s: s, l: 0, r: s.count - 1)
}

extension String {
    subscript(index: Int) -> Character {
        return self[String.Index(utf16Offset: index, in: self)]
    }
}
