//
//  Order.swift
//  DineApp
//
//  Created by Knoxpo MacBook Pro on 30/03/21.
//

import SwiftUI
//ObservableObject
class Order: ObservableObject {
    
    @Published var items = [MenuItem]()
  //  @Published var items1 = [MenuItem]()
    
    var total: Int {
        if items.count > 0
        {
            return items.reduce(0) {
                $0 + $1.price
            }
        }
        else
        {
                return 0
                
        }
    
    }
        
   
    
    
func add(item: MenuItem)
{
    items.append(item)
    
}
    
   
    


func remove(item: MenuItem)
{
if let index = items.firstIndex(of: item) {
    items.remove(at: index)
}
}
    
    
    
    
    
    
    
    
    
    
    
}
