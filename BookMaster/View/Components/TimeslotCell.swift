//
//  TimeslotCell.swift
//  BookMaster
//
//  Created by Sergey V on 16.03.25.
//

import SwiftUI

struct TimeslotCell: View {
    @State var observed: Observed
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(observed.timeLabel)
                .font(.title3.bold())
            Text(observed.isFreeDescription)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 19)
        .padding(.vertical, 12)
        .background(.card1)
        .clipShape(.rect(cornerRadius: 14))
        .offset(x: 42)
    }
}

extension TimeslotCell {
    @Observable
    class Observed {
        var timeslot: Timeslot
        
        var timeLabel: String {
                "\(timeslot.date.formatted(date: .omitted, time: .shortened)) - \(timeslot.endDate.formatted(date: .omitted, time: .shortened))"
        }
        
        var isFreeDescription: String {
            guard timeslot.clientID != nil else {
                return "Время свободно"
            }
            if timeslot.clientID == currentUserID {
                return "Вы записаны на это время"
            }
            return "Время занято"
        }
        
        var bgColor: Color {
            if timeslot.clientID == nil {
                return .card1
            }
            
            return timeslot.clientID == currentUserID ? .card3 : .card2
        }
        
        init(timeslot: Timeslot) {
            self.timeslot = timeslot
        }
    }
}

#Preview {
    TimeslotCell(observed: .init(timeslot: .init(date: .now, masterID: Timeslot.mockMasterID)))
}
