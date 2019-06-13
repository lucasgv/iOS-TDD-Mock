//
//  LeilaoDaoFalso.swift
//  Leilao
//
//  Created by Lucas Valle on 06/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Foundation

class LeilaoDaoMock: LeilaoDaoProtocol {

    private var leiloes: [Leilao] = []

    func salva(_ leilao: Leilao) {
        leiloes.append(leilao)
    }

    func encerrados() -> [Leilao] {
        return leiloes.filter({ $0.encerrado == true })
    }

    func correntes() -> [Leilao] {
        return leiloes.filter({ $0.encerrado == false })
    }

    func atualiza(_ leilao: Leilao) {
    }
}
