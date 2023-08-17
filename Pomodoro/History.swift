//
//  History.swift
//  Pomodoro
//
//  Created by Dinmukhambet Turysbay on 07.04.2023.
//

import SwiftUI

struct History: View{
    var body: some View{
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 10){
                TextView(text: "History",size: .large,weight: .bold)
                    .padding(.bottom,26)
                Group{
                    HStack{
                        TextView(text: "21.11.21",size: .large,weight: .bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack{
                        TextView(text:"Focus time",weight: .bold)
                        Spacer()
                        TextView(text: "01:28:32")
                    }
                
                    Divider()
                    
                    HStack{
                        TextView(text:"Break time",weight: .bold)
                        Spacer()
                        TextView(text: "05:00")
                    }
                    Divider().padding()
                }
                
                Group{
                    HStack{
                        TextView(text: "20.11.21",size: .large,weight: .bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack{
                        TextView(text:"Focus time",weight: .bold)
                        Spacer()
                        TextView(text: "25:00")
                    }
                
                    Divider()
                    
                    HStack{
                        TextView(text:"Break time",weight: .bold)
                        Spacer()
                        TextView(text: "05:00")
                    }
                    Divider().padding()
                }
                
                Group{
                    HStack{
                        TextView(text: "19.11.21",size: .large,weight: .bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack{
                        TextView(text:"Focus time",weight: .bold)
                        Spacer()
                        TextView(text: "25:00")
                    }
                
                    Divider()
                    
                    HStack{
                        TextView(text:"Break time",weight: .bold)
                        Spacer()
                        TextView(text: "05:00")
                    }
                    Divider().padding()
                }
                
                
                Spacer()
            }.padding()
        }
    }
}

struct TextView:View{
    enum TextWeight{
        case bold
        case thin
    }
    enum TextSize{
        case large
        case small
    }
    
    let text: String
    let size: TextSize
    let weight: TextWeight
    
    init(text: String, size: TextSize = .small, weight: TextWeight = .thin) {
        self.text = text
        self.size = size
        self.weight = weight
    }
    
    var body: some View{
        Text(text)
            .font(.system(size: size == .large ? 20 : 16,weight: weight == .bold ? .bold : .light))
            .foregroundColor(.white)
    }
}


struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
