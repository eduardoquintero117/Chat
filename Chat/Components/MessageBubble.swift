//
//  MessageBubble.swift
//  Chat
//
//  Created by iOS Dev Lab on 10/08/23.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    
    var body: some View {
        VStack{
            
            HStack{
                
                Text(message.text)
                    .padding()
                    .background(message.received ? .gray : Color("Color"))
                    .cornerRadius(30,corners: [.topLeft, .topRight, message.received ? .bottomRight: .bottomLeft])
                
                    //.frame(minWidth: 300, alignment: .trailing)
                
                
            }
            .frame(minWidth: 300, alignment: .trailing)
            Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                .font(.caption2)
                .foregroundColor(.gray)
                .padding(.leading , 25)
            
            
            
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing,25)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "123", timeStamp: Date (), text: "Mensaje de prueba", received: true))
    }
}
