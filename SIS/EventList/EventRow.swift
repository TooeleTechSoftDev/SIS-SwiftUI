//
//  EventRow.swift
//  SIS
//
//  Created by Bryan Scott on 2/4/20.
//  Copyright © 2020 Bryan Scott. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    var eventRow: EventEntry
    
    var body: some View {
        
        VStack {
            Text(eventRow.name)
            Text(eventRow.content.subject)
        }
    }
}

/*
struct EventRow_Previews: PreviewProvider {
    
    
    static var previews: some View {
        EventRow(EventEntry())
    }
}
*/
