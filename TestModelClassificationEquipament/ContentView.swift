//
//  ContentView.swift
//  TestModelClassificationEquipament
//
//  Created by Linda Marie Ribeiro Alves Correa dos Santos on 13/04/26.
//
import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ExerciseViewModel()
    
    let objetivos = ["fortalecimento", "resistencia", "mobilidade", "alongamento", "funcional", "equilibrio", "propriocepcao"]
    let exercicios = ["elevação frontal", "remada", "abducao"]
    let regioes = ["ombro", "joelho", "quadril"]
    
    var body: some View {
        VStack(spacing: 20) {
            
            Picker("Objetivo", selection: $viewModel.objetivo) {
                ForEach(objetivos, id: \.self) { Text($0) }
            }
            
            Picker("Exercício", selection: $viewModel.exercicio) {
                ForEach(exercicios, id: \.self) { Text($0) }
            }
            
            Picker("Região", selection: $viewModel.regiao) {
                ForEach(regioes, id: \.self) { Text($0) }
            }
            
            Button("Prever equipamento") {
                viewModel.calcularEquipamento()
            }
            
            Text("Resultado: \(viewModel.resultado)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
