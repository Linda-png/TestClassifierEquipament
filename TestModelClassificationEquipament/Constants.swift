//
//  Constants.swift
//  TestModelClassificationEquipament
//

import CoreFoundation

enum Constants {

    enum Spacing {
        static let stackSpacing: CGFloat = 20
    }

    enum Strings {
        static let pickerObjetivo   = "Objetivo"
        static let pickerExercicio  = "Exercício"
        static let pickerRegiao     = "Região"
        static let buttonPrever     = "Prever equipamento"
        static let resultadoPrefix  = "Resultado: "
        static let semResultado     = ""
        static let semOpcao         = ""
    }

    enum Errors {
        static let erroCarregarModelo = "Erro ao carregar modelo"
        static let erroPredicao       = "Erro na predição"
        static let erroRetorno        = "Erro"
    }

    enum Dataset {
        static let nomeArquivo = "dados"
        static let extensaoArquivo = "json"
    }
}
