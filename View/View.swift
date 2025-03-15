//
//  view.swift
//  piedra-papel-o-tijera
//
//  Created by juan camilo on 15/03/25.
//

import SwiftUI

struct view: View {
    
    @StateObject private var viewModel = GameviewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Piedra, Papel o Tijera")
                .font(.largeTitle)
                .bold()
            
            Text(viewModel.resultado)
                .font(.largeTitle)
                .padding()
            
            HStack {
                ForEach(Juego.Opcion.allCases, id: \.self) { option in
                    Button(action: { viewModel.jugar(opcion: option) }) {
                        Text(option.rawValue)
                            .font(.system(size: 50))
                    }
                    .padding()
                
                    }
                }
            
                if let opcionUsario = viewModel.opcionUsuario, let opcionIA = viewModel.opcionIA {
                VStack {
                    Text("Tú: \(opcionUsario.rawValue)")
                    Text("IA: \(opcionIA.rawValue)")
                }
                .font(.largeTitle)
                .padding()
            }
        }
    }
}


