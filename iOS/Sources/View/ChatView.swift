//
//  ChatView.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/03/31.
//  Copyright © 2022 baegteun. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    
    @StateObject var socket = SocketViewModel()

    var body: some View {
        NavigationView {
            
            VStack(spacing: 0) {
                
                GeometryReader { reader in
                    
                    ScrollView {
                        //                    getMessageView(viewWidth: reader.size.width)
                    }
                }
                
                HStack {
                    TextEditor(text: $socket.message)
                        .frame(maxWidth: .infinity, maxHeight: 28)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(maxWidth: 28, maxHeight: 28)
                    }
                } .padding(.horizontal, 20)
            }
            .navigationTitle("WhoAreYou")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 60, height: 26)
                                .foregroundColor(Color.init(hex: "FF5252"))
                            
                            Text("퇴장")
                                .foregroundColor(.white)
                                
                        }
                        
                    }
                }
            }
            
        }
        //        let rows = [GridItem(.flexible(minimum: 10))]
        
        //    func getMessageView(viewWidth: CGFloat) -> some View {
        //        LazyHGrid(rows: rows, spacing: 0) {
        //            ForEach(chat.message) { message in
        //
        //                let isReceived = message.type == .Received
        //
        //                HStack {
        //                    ZStack {
        //
        //                        Text(message.text)
        //                    }
        //                    .frame(width: viewWidth * 0.7, alignment: isReceived ? .leading : .trailing)
        //                    .padding(.vertical)
        //                    .background(Color.blue)
        //                }
        //                .frame(maxWidth: .infinity, alignment: isReceived ? .leading : .trailing)
        //            }
        //        }
        //    }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
