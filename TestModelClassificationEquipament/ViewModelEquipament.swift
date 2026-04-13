//
//  ViewModelEquipament.swift
//  TestModelClassificationEquipament
//
//  Created by Linda Marie Ribeiro Alves Correa dos Santos on 13/04/26.
//

import Foundation
import Combine
import SwiftUI

@MainActor
final class ExerciseViewModel: ObservableObject {
    
    @Published var objetivo: String = "força"
    @Published var exercicio: String = "elevação frontal do braço"
    @Published var regiao: String = "ombro"
    
    @Published var resultado: String = ""
    
    func calcularEquipamento() {
        let input = ExerciseInput(
            objetivo: objetivo,
            exercicio: exercicio,
            regiao: regiao
        )
        
        resultado = EquipamentMLService.shared.predict(input: input)
    }
}
