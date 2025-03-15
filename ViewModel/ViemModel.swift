//
//  Model.swift
//  piedra-papel-o-tijera
//
//  Created by juan camilo on 15/03/25.
//

import SwiftUI

class GameviewModel: ObservableObject {
    @Published var opcionUsuario: Juego.Opcion?
    @Published var opcionIA: Juego.Opcion?
    @Published var resultado: String = "Elija una opción"
    
    func jugar(opcion: Juego.Opcion) {
        opcionUsuario = opcion
        opcionIA = Juego.Opcion.allCases.randomElement()!
        determinarGanador()
    }
    
    private func determinarGanador()  {
        guard let usuario = opcionUsuario, let ia = opcionIA  else { return }
        
            if usuario == ia {
                resultado = "Empate 🤝"
            } else if (usuario == .piedra && ia == .tijera) ||
                        (usuario == .papel && ia == .piedra) ||
                        (usuario == .tijera && ia == .papel) {
                resultado = "Ganaste 🎉"
            } else {
                resultado = "Perdiste 😢"
            }
        }
    }

