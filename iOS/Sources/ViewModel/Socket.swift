//
//  Socket.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/04/01.
//  Copyright © 2022 baegteun. All rights reserved.
//

import Foundation
import SocketIO


let manager = SocketManager(socketURL: URL(string: "http://10.53.68.89:8080/")!,
                            config:  [.log(false) , .compress, .forceWebsockets(true)])

class Socket {
    
    
    
    func connection() {
        socket.connection()
        let message : [String: Any] = [
            "Sender" : "from iOS",
            "Type" : "text",
            "data" : "한글 테스트"
        ]
        
        
        socket.on(clientEvent: .connect) { data, ack in
            self.socket?.emit("message", message)
        }
        
    }
}

