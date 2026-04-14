//
//  MLservice.swift
//  TestModelClassificationEquipament
//
//  Created by Linda Marie Ribeiro Alves Correa dos Santos on 13/04/26.
//
import CoreML

final class EquipamentMLService {
    
    static let shared = EquipamentMLService()
    
    private let model: TabularClassifierEquipament
    
    private init() {
        do {
            self.model = try TabularClassifierEquipament(
                configuration: MLModelConfiguration()
            )
        } catch {
            fatalError("Erro ao carregar modelo: \(error)")
        }
    }
    
    func predict(input: ExerciseInput) -> String {
        do {
            let prediction = try model.prediction(
                objetivo: input.objetivo,
                exercicio: input.exercicio,
                regiao: input.regiao
            )
            
            return prediction.equipamento
            
        } catch {
            print("Erro na predição:", error)
            return "Erro"
        }
    }
}
