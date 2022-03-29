//
//  StartView.swift
//  WhoAreYou
//
//  Created by 민도현 on 2022/03/29.
//  Copyright © 2022 baegteun. All rights reserved.
//

import SwiftUI

struct StartView: View {
    @State var isAct : Bool = false
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center, spacing: 66) {
                Image("WhoAreYou-text")
                
                Image("WhoAreYou-logo")
                
                Text("Who Are You 는 익명의 상대와\n 편하게 대화할 수 있는\n 익명 채팅 서비스 입니다.")
                    .frame(maxWidth: 375, maxHeight: 96)
                    .font(.title2)
                //font 를 가운데로 정렬
                    .multilineTextAlignment(.center)
                
                Button {
                    
                } label: {
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: 227, maxHeight: 40)
                            .foregroundColor(.init(hex: "8870FE"))
                        
                        //back 버튼을 숨기기 위해 원하는 뷰 바로 뒤에 코드 추가
                        NavigationLink( destination: WhatsYourNameView() .navigationBarBackButtonHidden(true)) {
                            
                            Text("시작하기")
                                .frame(maxWidth: 67, maxHeight: 26)
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                }
            }
        }
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
