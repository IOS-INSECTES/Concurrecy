//
//  Flight.swift
//  Concurrecy
//
//  Created by OM BHAGWAN on 26/05/24.
//

import Foundation

//class Flight {
//    
//    var company:String = "Vistara"
//    var availableSeats:[String] = ["1A","1B","1C"]
//    
//    let dispatchBarrier = DispatchQueue(label: "dispatchBarrier")
//    
//    func getAvailableSeat() -> [String] {
//        
//        dispatchBarrier.sync(flags: .barrier) {
//            return availableSeats
//        }
//    }
//    
//    func seatBook() {
//        dispatchBarrier.sync(flags: .barrier) {
//            let seat = availableSeats.first
//            availableSeats.removeFirst()
//            print("Book Seat: -\(seat ?? "")")
//        }
//    }
//}

actor Flight {
    
    var company:String = "Vistara"
    var availableSeats:[String] = ["1A","1B","1C"]
    
  //  let dispatchBarrier = DispatchQueue(label: "dispatchBarrier")
    
    func getAvailableSeat() -> [String] {
        
      //  dispatchBarrier.sync(flags: .barrier) {
            return availableSeats
       // }
    }
    
    func seatBook() {
      //  dispatchBarrier.sync(flags: .barrier) {
            let seat = availableSeats.first ?? ""
            availableSeats.removeFirst()
            print("Book Seat: -\(seat)")
       // }
    }
}

