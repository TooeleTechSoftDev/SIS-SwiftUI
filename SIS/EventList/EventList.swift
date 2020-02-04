//
//  EventList.swift
//  SIS
//
//  Created by Bryan Scott on 2/4/20.
//  Copyright © 2020 Bryan Scott. All rights reserved.
//

import SwiftUI

struct EventList: View {
    @State private var eventData = [EventEntry]()

    let fetchURL = URL(string: "http://localhost:8088/events/list/bscott")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(eventData) { item in
                    EventRow(eventRow: item)
                }
            }
        }
        .onAppear(perform: loadEvents)
    }
    
    func loadEvents() {
        loadFromNetwork(fetchURL!, completion: { data in
            self.eventData = parseJSON(data)
        })
    }
    
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
