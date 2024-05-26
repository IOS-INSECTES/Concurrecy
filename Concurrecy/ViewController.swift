//
//  ViewController.swift
//  Concurrecy
//
//  Created by OM BHAGWAN on 26/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    var flight:Flight = Flight()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let queue1:DispatchQueue = DispatchQueue(label: "queue1")
        let queue2:DispatchQueue = DispatchQueue(label: "queue2")
        
        
//        queue1.async {
//            self.flight.seatBook()
//        }
//        
//        queue2.async {
//            let availbleSeat = self.flight.getAvailableSeat()
//            print("Availble Seat:- \(availbleSeat)")
//        }
        
        
        queue1.async {
            Task {
                await self.flight.seatBook()
            }
           
        }
        
        queue2.async {
            Task {
                let availbleSeat = await self.flight.getAvailableSeat()
                print("Availble Seat:- \(availbleSeat)")
            }
        }
       
        
        
        
    }


}

