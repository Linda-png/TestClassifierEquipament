//
//  ModelParametros.swift
//  TestModelClassificationEquipament
//
//  Created by Linda Marie Ribeiro Alves Correa dos Santos on 13/04/26.
//

import Foundation

// MARK: - Input do modelo
struct ExerciseInput {
    let objetivo: String
    let exercicio: String
    let regiao: String
}

// MARK: - Fonte de dados do dataset
final class DatasetService {

    static let shared = DatasetService()

    let objetivos: [String]
    let exercicios: [String]
    let regioes: [String]

    private init() {
        objetivos = EquipmentDataset.objetivos
        exercicios = EquipmentDataset.exercicios
        regioes = EquipmentDataset.regioes
    }
}

// MARK: - Dataset centralizado
// Para adicionar novas opções, edite apenas este enum.
private enum EquipmentDataset {
    static let objetivos: [String] = [
        "fortalecimento",
        "resistencia",
        "mobilidade",
        "alongamento",
        "funcional",
        "equilibrio",
        "propriocepcao"
    ]

    static let exercicios: [String] = [
        "elevação frontal",
        "afundo",
        "abducao"
    ]

    static let regioes: [String] = [
        "ombro",
        "joelho",
        "quadril"
    ]
}
