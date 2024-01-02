//
//  MyClass.swift
//  LifeCycle
//
//  Created by administrador on 30/12/23.
//

import Foundation

class MyClass{
    
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() #\(instance)")
    }
    
    deinit{
        print(">> MyClass.deinit #\(instance)")
    }
    
    func methodOne(){
        print(">> method one")
    }
    
    func methodTwo(){
        print(">> method two")
    }
}
