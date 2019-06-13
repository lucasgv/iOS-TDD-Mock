//
//  Pagamento.swift
//  Leilao
//
//  Created by Lucas Valle on 09/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Foundation

class Pagamento {
    private var valor: Double
    private var date: Date

    init(_ valor: Double, _ data: Date) {
        self.valor = valor
        self.date = data
    }

    func getValor() -> Double {
        return valor
    }

    func getData() -> Date {
        return date
    }
}
