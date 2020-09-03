//
//  Basic.swift
//  Test_SkillCheck
//
//  Created by Suhong Jeong on 2020/06/14.
//  Copyright © 2020 Suhong Jeong. All rights reserved.
//

import Foundation

class Basic
{
    func solution_0(_ s:String) -> Bool
    {
        var ans:Bool = false
        let upperS = s.uppercased()
        var pCount = 0
        var yCount = 0
        
        for i in upperS{
            if i == "P"{
                pCount += 1
            }
            else if i == "Y"{
                yCount += 1
            }
        }
        
        if pCount == yCount {
            if pCount != 0 && yCount != 0 {
                ans = true
            }
        }

        return ans
    }
    
    func solution_1(_ n:Int, _ m:Int) -> [Int] {
        
        var result = [n > m ? m : n, n > m ? n : m]
        var lcm = 0
        
        repeat {
            lcm = result[1] % result[0]
            result[1] = result[0]
            result[0] = lcm
        } while lcm != 0
        
        lcm = result[1]
        
        result[0] = lcm
        result[1] = n * m / result[0]
        
        return result
    }
    
    func solution_2(_ A:[Int], _ B:[Int]) -> Int
    {
        var ans = 0
        
        var sortA = A.sorted()
        var sortB = B.sorted()
        
        let count = A.count
        
        for _ in 0 ..< count {
            let a = sortA.last! * sortB.first!
            let b = sortA.first! * sortB.last!
            
            if a > b {
                ans += b
                sortA.removeFirst()
                sortB.removeLast()
            } else {
                ans += a
                sortA.removeLast()
                sortB.removeFirst()
            }
        }
        
        return ans
    }
}
