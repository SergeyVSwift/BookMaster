//
//  Booking.swift
//  BookMaster
//
//  Created by Sergey V on 16.03.25.
//

import Foundation

class Timeslot: Identifiable {
    var id: UUID = .init()
    var clientID: UUID?
    var date: Date
    var endDate: Date
    var masterID: UUID
    
    init(date: Date, masterID: UUID) {
        self.date = date
        self.masterID = masterID
        self.endDate = self.date.addingTimeInterval(7200)
    }
}

extension Timeslot {
    static let mockMasterID = UUID()
    static var mockData: [Timeslot] = [
        Timeslot(date: .init(timeIntervalSince1970: 1), masterID: mockMasterID),
        Timeslot(date: .init(timeIntervalSince1970: 1), masterID: mockMasterID),
        Timeslot(date: .init(timeIntervalSince1970: 1), masterID: mockMasterID),
        Timeslot(date: .init(timeIntervalSince1970: 1), masterID: mockMasterID)
        ]
}
