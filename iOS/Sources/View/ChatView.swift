//
//  ChatView.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/03/31.
//  Copyright © 2022 baegteun. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    
    @State var message : String = ""
    var body: some View {
        VStack {
            
            ScrollView {
                
            }
            
            
            HStack {
                TextField("입력해주세요", text: $message)
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(maxWidth: 28, maxHeight: 28)
                }
            } .padding(.horizontal, 20)
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
