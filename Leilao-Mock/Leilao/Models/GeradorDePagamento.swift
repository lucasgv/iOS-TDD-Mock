//
//  GeradorDePagamento.swift
//  Leilao
//
//  Created by Lucas Valle on 09/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Foundation

class GeradorDePagamento {

    private var leiloes: LeilaoDaoProtocol
    private var avaliador: Avaliador
    private var repositorioDePagamento: RepositorioDePagamento


    init(_ leiloes: LeilaoDaoProtocol, _ avaliador: Avaliador, _ repositorioDePagamento: RepositorioDePagamento) {
        self.leiloes = leiloes
        self.avaliador = avaliador
        self.repositorioDePagamento = repositorioDePagamento
    }

    func gera() {
        let leiloesEncerrados = leiloes.encerrados()

        for leilao in leiloesEncerrados {
            try? avaliador.avalia(leilao: leilao)

            let novoPagamento = Pagamento(avaliador.maiorLance(), Date())
            repositorioDePagamento.salva(novoPagamento)
        }
    }
}
