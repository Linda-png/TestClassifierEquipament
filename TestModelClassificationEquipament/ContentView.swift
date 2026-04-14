//
//  ContentView.swift
//  TestModelClassificationEquipament
//
//  Created by Linda Marie Ribeiro Alves Correa dos Santos on 13/04/26.
//
import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = ExerciseViewModel()

    var body: some View {
        VStack(spacing: 20) {

            Picker("Objetivo", selection: $viewModel.objetivo) {
                ForEach(viewModel.dataset.objetivos, id: \.self) { Text($0) }
            }

            Picker("Exercício", selection: $viewModel.exercicio) {
                ForEach(viewModel.dataset.exercicios, id: \.self) { Text($0) }
            }

            Picker("Região", selection: $viewModel.regiao) {
                ForEach(viewModel.dataset.regioes, id: \.self) { Text($0) }
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
