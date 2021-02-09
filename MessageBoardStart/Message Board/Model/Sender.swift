//
//  Sender.swift
//  Message Board
//
//  Created by Jeff Kang on 2/9/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

import Foundation
import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
    
    // convert a sender to a dictionary to be saved to User Defaults
    var dictionaryRepresentation: [String : String] {
        return ["id": senderId, "displayName": displayName]
    }
    
    init(senderId: String, displayName: String) {
        self.senderId = senderId
        self.displayName = displayName
    }
    
    init?(dictionary: [String: String]) {
        guard let id = dictionary["id"],
              let displayName = dictionary["displayName"] else { return nil }
        
        self.init(senderId: id, displayName: displayName)
    }
}
