//
//  WhatsYourNameView.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/03/29.
//  Copyright © 2022 baegteun. All rights reserved.
//

import SwiftUI

struct WhatsYourNameView: View {
    @StateObject var viewModel = SocketViewModel()
    
    var body: some View {
        NavigationView {
            
            
            VStack(alignment: .center, spacing: 67) {
                
                Text("Who Are You?\n\n당신의 닉네임을 입력하세요")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 34)
                        .stroke(Color.black, lineWidth: 1)
                        .frame(maxWidth: 251, maxHeight: 40)
                    
                    TextField("닉네임 입력", text: $viewModel.yourName)
                        .frame(maxWidth: 251, maxHeight: 40)
                        .multilineTextAlignment(.center)
                }
                
                Button {
                    
                } label: {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: 227, maxHeight: 40)
                            .foregroundColor(.init(hex: "8870FE"))
                        
                        NavigationLink(destination: ChatView() .navigationBarBackButtonHidden(true)) {
                            Text("입장하기")
                                .frame(maxWidth: 67, maxHeight: 26)
                                .foregroundColor(.white)
                            
                            //                                .onTapGesture {
                            //                                    print("최형우 = \(viewModel.yourName)")
                            //                                }
                            
                        }
                    }
                }
                
                
            }
        }
    }
}

struct WhatsYourNameView_Previews: PreviewProvider {
    static var previews: some View {
        WhatsYourNameView()
    }
}
