//
//  Socket.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/04/01.
//  Copyright © 2022 baegteun. All rights reserved.
//

import Foundation
import SocketIO

//
//let manager = SocketManager(socketURL: URL(string: "http://10.53.68.89:8080/")!,
//                            config:  [.log(false) , .compress, .forceWebsockets(true)])

class SocketViewModel : ObservableObject {
    
    @Published var message : String = ""
    
    let manager = SocketManager(socketURL: URL(string: "http://10.120.74.37:8080/")!, config: [.log(false), .compress])
    var socket: SocketIOClient? = nil
    
    init() {
        setUpSocket()
        
        //설정한 주소와 포트로 소켓 연결 시도
        socket?.connect()
    }
    
    func setUpSocket() {
        self.socket = manager.defaultSocket
    }
    
    func setUpSocketEvents() {
        socket?.on(clientEvent: .connect) { data, ack in
            print("Connected!")
        }
        
        //updateMessage 라는 이벤트 이름으로 message 데이터를 송신
        socket?.emit("updateMessage", message )
        
        //이름이 updateMessage 로 emit 된 이벤트 수신
        socket?.on("updateMessage") { (data, ack) in
            guard let dataInfo = data.first else { return }
            
            
            
        }
    }
}

