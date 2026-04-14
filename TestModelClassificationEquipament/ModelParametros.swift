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

// MARK: - Estrutura decodificável do JSON
private struct EquipmentDataset: Decodable {
    let objetivos: [String]
    let exercicios: [String]
    let regioes: [String]

    static func carregarDoBundle() -> EquipmentDataset {
        guard
            let url = Bundle.main.url(
                forResource: Constants.Dataset.nomeArquivo,
                withExtension: Constants.Dataset.extensaoArquivo
            ),
            let data = try? Data(contentsOf: url),
            let dataset = try? JSONDecoder().decode(EquipmentDataset.self, from: data)
        else {
            fatalError("Arquivo \(Constants.Dataset.nomeArquivo).\(Constants.Dataset.extensaoArquivo) não encontrado ou inválido no bundle.")
        }
        return dataset
    }
}

// MARK: - Fonte de dados do dataset
final class DatasetService {

    static let shared = DatasetService()

    let objetivos: [String]
    let exercicios: [String]
    let regioes: [String]

    private init() {
        let dataset = EquipmentDataset.carregarDoBundle()
        objetivos  = dataset.objetivos
        exercicios = dataset.exercicios
        regioes    = dataset.regioes
    }
}
