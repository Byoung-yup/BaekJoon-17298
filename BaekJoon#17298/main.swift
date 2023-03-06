//
//  main.swift
//  BaekJoon#17298
//
//  Created by 김병엽 on 2023/03/07.
//
// Reference: https://velog.io/@sun02/Swift-백준-17298-오큰수

import Foundation

let N = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map({Int(String($0))!})
var stack = [Int]()

func solution() {
    
    for i in 0..<N {
        
        while !stack.isEmpty && array[stack.last!] < array[i] {
            array[stack.removeLast()] = array[i]
        }
        
        stack.append(i)
    }
    
    for i in stack {
        
        array[i] = -1
    }
    
    print(array.map{String($0)}.joined(separator: " "))
}

solution()
