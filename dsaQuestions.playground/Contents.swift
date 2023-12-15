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

// 1. Reverse a Linked List.

/*
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
 
 */

// 2. Detect a cycle in a linked list.

/*
/// This function checks for cycle using `Floyd's Tortoise and Hare` algorithm.
/// Time complexity for this approach is `o(n)` & space complexity is `o(1)`.
/// If we use `Hash Map` approach, Time complexity will be `o(n)` & space complexity will be `o(n)`.
/// - Parameter head: Linked List
/// - Returns: `true` if cycle is detected otherwise retruns `false`.
func hasCycle(_ head: ListNode?) -> Bool {
    var tortoise = head
    var hare = head
    
    while hare != nil && hare?.next != nil {
        tortoise = tortoise?.next
        hare = hare?.next?.next
        
        if tortoise === hare {
            return true // cycle detected..
        }
    }
    
    return false    // no cycle found..
}

let node1 = ListNode(value: 1)
let node2 = ListNode(value: 2)
let node3 = ListNode(value: 3)
let node4 = ListNode(value: 4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node2      // Creating cycle..

print("Has Cycle: \(hasCycle(node1))")

*/

// 3. Find the intersection point of two linked lists.

/*
/// - `Time Complexity: O(m + n)`
///     - `m`: The length of the first linked list.
///     - `n`: The length of the second linked list.
///     - The solution traverses both linked lists once. The while loop runs until either the intersection point is found or both pointers reach the end of the lists.
/// - `Sace Complexity`: `O(1)`
/// - It only uses two pointers (pointerA and pointerB) to traverse the linked lists and does not use any additional data structures.
/// - Parameters:
///   - headA: Linked list A.
///   - headB: Linked list B.
/// - Returns: Intersection node if any.
func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var pointerA = headA
    var pointerB = headB
    
    // Traverse both lists until they either intersect or reach the end
    while pointerA !== pointerB {
        pointerA = pointerA == nil ? headB : pointerA?.next
        pointerB = pointerB == nil ? headA : pointerB?.next
    }
    
    return pointerA // or pointerB, as they are now pointing to the intersection node (if any)
}


// Example usage:
// Create two linked lists with an intersection point
let commonNode = ListNode(value: 8)
let listA = ListNode(value: 4)
listA.next = ListNode(value: 1)
listA.next?.next = commonNode

let listB = ListNode(value: 5)
listB.next = ListNode(value: 0)
listB.next?.next = ListNode(value: 1)
listB.next?.next?.next = commonNode

// Call the function to find the intersection point
let intersectionNode = getIntersectionNode(listA, listB)

if let intersectionNodeValue = intersectionNode?.value {
    print("Intersection point value: \(intersectionNodeValue)")
} else {
    print("No intersection point found.")
}
*/

// 3. Implement a function to remove duplicates from an unsorted linked list.
/*
func removeDuplicates(_ list: inout ListNode?) {
    var seenNodes = Set<Int>()
    var current = list
    var previous: ListNode? = nil
    
    while current != nil {
        let value = current!.value
        
        if seenNodes.contains(value) {
            // Remove the duplicate node
            previous?.next = current?.next
        } else {
            // Add the value to the set for future comparison
            seenNodes.insert(value)
            previous = current
        }
        
        // Move to the next node
        current = current?.next
    }
}


// Example usage:

// Create a sample linked list: 1 -> 3 -> 2 -> 3 -> 4 -> 1 -> nil
var head = ListNode(value: 1)
head.next = ListNode(value: 3)
head.next?.next = ListNode(value: 2)
head.next?.next?.next = ListNode(value: 3)
head.next?.next?.next?.next = ListNode(value: 4)
head.next?.next?.next?.next?.next = ListNode(value: 1)

removeDuplicates(head as? ListNode)
*/
