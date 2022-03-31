//
//  ChatModel.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/03/31.
//  Copyright © 2022 baegteun. All rights reserved.
//

import SwiftUI

struct ChatModel : Identifiable {
    var id = UUID().uuidString
    let person : Person
    var message : [Message]
    
}

struct Person : Identifiable {
    let id = UUID()
    let name : String
}

struct Message : Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date : Date
    let text : String
    let type : MessageType
    
    init(text : String,type : MessageType, date : Date) {
        self.text = text
        self.type = type
        self.date = date
    }

}

extension ChatModel {
    static let sampleChat = [
        ChatModel(person: Person(name: "Dohyeon"), message: [
            Message(text: "Hi", type: .Sent, date: Date(timeIntervalSince1970: -86400 * 3)),
            Message(text: "Hello~~~", type: .Received, date: Date(timeIntervalSince1970: -86400 * 2)),
            Message(text: "Hello~~@@", type: .Received, date: Date(timeIntervalSince1970: -86400 * 2)),
            Message(text: "How are you doing know??", type: .Sent, date: Date(timeIntervalSince1970: -86400 * 1)),
            
        ])
    ]
}
