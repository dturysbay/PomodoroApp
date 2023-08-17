//
//  Settings.swift
//  Pomodoro
//
//  Created by Dinmukhambet Turysbay on 07.04.2023.
//

import SwiftUI

struct Settings: View{
    @State var focusTime: String = "25:00"
    @State var breakTime: String = "05:00"
    var body: some View{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack{
                    Group{
                        HStack{
                            Spacer()
                            Text("Settings")
                                .font(.system(size: 17,weight:.bold))
                            Spacer()
                            Text("Save")
                        }
                        
                    }
                    .font(.system(size: 17))
                    .padding(.bottom,34)
                    
                    VStack{
                        Group{
                            HStack{
                                Text("Focus time").font(.system(size: 17))
                                Spacer()
                                TextField("25:00",text: $focusTime)
                                    .foregroundColor(.white)
                                    .frame(width: 50)
                            }
                            Divider()
                            HStack{
                                Text("Break time").font(.system(size: 17))
                                Spacer()
                                TextField("05:00",text: $breakTime)
                                    .foregroundColor(.white)
                                    .frame(width: 50)
                            }
                        }
                        .font(.system(size: 17))
                        .padding(.leading,10)
                        .padding(.trailing,10)
                    }
                    Spacer()
                }
                .padding(.horizontal)
            }
//            .navigationTitle("Settings")
            .foregroundColor(.white)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
