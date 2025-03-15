//
//  Model.swift
//  piedra-papel-o-tijera
//
//  Created by juan camilo on 15/03/25.
//

import SwiftUI

struct Juego {
    enum Opcion: String, CaseIterable {
        case piedra = "🪨"
        case papel = "📄"
        case tijera = "✂️"
    }
}
