//
//  TitleRow.swift
//  Chat
//
//  Created by iOS Dev Lab on 10/08/23.
//

import SwiftUI

struct TitleRow: View {
    //Otra Imagen de perfil se obtiene del link
    
    var imageURL = URL(string: "https://img.freepik.com/vector-gratis/lindo-astronauta-montando-cohete-agitando-mano-icono-dibujos-animados-ilustracion-concepto-icono-tecnologia-ciencia_138676-2130.jpg?w=2000")
    
    
    var name: String = "Eduardo Q"
    
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageURL!) { image in
                //view
                
                image
                    .resizable()
                    .frame(width:50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            Text(name)
                .font(.title)
                .bold()
            Spacer()
            Image(systemName: "video.fill")
                .foregroundColor(Color("Color"))
                .padding()
                .background(.black)
                .cornerRadius(50)
            
            
        }.padding()


    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
    }
}
