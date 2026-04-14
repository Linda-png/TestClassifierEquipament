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
        VStack(spacing: Constants.Spacing.stackSpacing) {

            Picker(Constants.Strings.pickerObjetivo, selection: $viewModel.objetivo) {
                ForEach(viewModel.dataset.objetivos, id: \.self) { Text($0) }
            }

            Picker(Constants.Strings.pickerExercicio, selection: $viewModel.exercicio) {
                ForEach(viewModel.dataset.exercicios, id: \.self) { Text($0) }
            }

            Picker(Constants.Strings.pickerRegiao, selection: $viewModel.regiao) {
                ForEach(viewModel.dataset.regioes, id: \.self) { Text($0) }
            }

            Button(Constants.Strings.buttonPrever) {
                viewModel.calcularEquipamento()
            }

            Text("\(Constants.Strings.resultadoPrefix)\(viewModel.resultado)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
