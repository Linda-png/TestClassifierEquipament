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

    let dataset = DatasetService.shared

    @Published var objetivo: String
    @Published var exercicio: String
    @Published var regiao: String
    @Published var resultado: String = Constants.Strings.semResultado

    init() {
        objetivo  = DatasetService.shared.objetivos.first  ?? Constants.Strings.semOpcao
        exercicio = DatasetService.shared.exercicios.first ?? Constants.Strings.semOpcao
        regiao    = DatasetService.shared.regioes.first    ?? Constants.Strings.semOpcao
    }

    func calcularEquipamento() {
        let input = ExerciseInput(
            objetivo: objetivo,
            exercicio: exercicio,
            regiao: regiao
        )
        resultado = EquipamentMLService.shared.predict(input: input)
    }
}
