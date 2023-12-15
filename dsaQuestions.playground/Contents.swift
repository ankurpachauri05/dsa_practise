import UIKit

// MARK: - Rotate an array..

//func rotateArray(_ array: inout [Int], by positions: Int) {
//    let n = array.count
//    
//    // Ensure positions is within the range of array count
//    let effectivePositions = positions % n
//    
//    // Rotate the array using Swift array slice operations
//    let rotatedPart = array.suffix(effectivePositions)
//    array.removeLast(effectivePositions)
//    array.insert(contentsOf: rotatedPart, at: 0)
//}
//
//// Example usage:
//var myArray = [1, 2, 3, 4, 5]
//let numberOfPositions = 3
//
//print("Original Array: \(myArray)")
//
//rotateArray(&myArray, by: numberOfPositions)
//
//print("Rotated Array: \(myArray)")

// MARK: - Reverse an array..

//func reverseArr(arr: [Int]) -> [Int] {
//    var reversedArr = arr
//    
//    let n = arr.count
//    
//    for i in 0..<arr.count/2 {
//        let temp = reversedArr[i]
//        reversedArr[i] = arr[n - 1 - i]
//        reversedArr[n - 1 - i] = temp
//    }
//    
//    return reversedArr
//}
//
//
//let arr = [1,2,3,4,5]
//print(reverseArr(arr: arr))


// MARK: - Anagrams..

//func checkIfAnagrams(str1: String, str2: String) -> Bool {
//    return getCharCount(for: str1) == getCharCount(for: str2)
//}
//
//func getCharCount(for str: String) -> [Character: Int] {
//    var dic: [Character: Int] = [:]
//    
//    for c in str {
//        dic[c, default: 0] += 1
//    }
//    
//    return dic
//}
//
//
//print(checkIfAnagrams(str1: "worth", str2: "throw"))

// MARK: - Reverse a string

//func reverseString(_ str: String) -> String {
//    var reversedStr = ""
//    
//    for c in str {
//        reversedStr = String(c) + reversedStr
//    }
//    
//    return reversedStr
//}
//
//print(reverseString("Amit"))

// MARK: - Longest Substring

/*func lengthOfLongestSubstring(_ s: String) -> Int {
    var maxLength = 0
    var charIndexMap = [Character: Int]()  // Map to store the index of each character
    
    var startIndex = 0
    
    for (index, char) in s.enumerated() {
        // If the character is already in the current substring, update the start index
        if let charIndex = charIndexMap[char], charIndex >= startIndex {
            startIndex = charIndex + 1
        }
        
        // Update the character's index in the map
        charIndexMap[char] = index
        
        // Update the maximum length
        maxLength = max(maxLength, index - startIndex + 1)
    }
    
    return maxLength
}

// Example usage:
let inputString = "abcabcbb"
let result = lengthOfLongestSubstring(inputString)
print("The length of the longest substring without repeating characters is: \(result)")

*/

// MARK: - Linked List

/// Reverse a linked list..

class ListNode {
    let value: Int
    var next: ListNode?
    
    init(value: Int) {
        self.value = value
        self.next = nil
    }
}

func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var current = head
    var next: ListNode?
    
    while current != nil {
        next = current?.next        // head -> N1 -> N2 -> N3 -> N4 -> Null
        current?.next = prev        // N1 -> head -> Null
        prev = current              // head -> Null
        current = next
    }
    
    return prev
}

func printLinkedList(_ head: ListNode?) {
    var current = head
    
    while current != nil {
        print(current!.value, terminator: " ")
        
        current = current?.next
    }
}

let head = ListNode(value: 1)

head.next = ListNode(value: 2)
head.next?.next = ListNode(value: 3)
head.next?.next?.next = ListNode(value: 4)


print("Original Linked List:")

printLinkedList(head)


print("Reversed Linked List:")

let reversedListHead = reverseLinkedList(head)

printLinkedList(reversedListHead)

