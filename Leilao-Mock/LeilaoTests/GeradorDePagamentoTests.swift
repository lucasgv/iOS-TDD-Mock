//
//  GeradorDePagamentoTests.swift
//  LeilaoTests
//
//  Created by Lucas Valle on 09/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import XCTest
import Cuckoo
@testable import Leilao

class GeradorDePagamentoTests: XCTestCase {

    var daoFalse: MockLeilaoDao!
    var avaliador: Avaliador!
    var pagamentos: MockRepositorioDePagamento!

    override func setUp() {
        daoFalse = MockLeilaoDao().withEnabledSuperclassSpy()
        avaliador = Avaliador()
        pagamentos = MockRepositorioDePagamento().withEnabledSuperclassSpy()
    }

    override func tearDown() {
    }

    //Utilizando Mock
    func testDeveGerarPagamentoParaUmLeilaoEncerrado() {
        let playstation = CriadorDeLeilao().para(descricao: "Playstation")
            .lance(Usuario(id: 1, nome: "Jose"), 2000.0)
            .lance(Usuario(id: 2, nome: "Maria"), 2500.0)
            .constroi()

        stub(daoFalse) { (daoFalse) in
            when(daoFalse.encerrados()).thenReturn([playstation])
        }

        let avaliadorFalso = MockAvaliador().withEnabledSuperclassSpy()

        stub(avaliadorFalso) { (avaliadorFalso) in
            when(avaliadorFalso.maiorLance()).thenReturn(2500.0)
        }

        let pagamentos = MockRepositorioDePagamento().withEnabledSuperclassSpy()

        let geradorDePagamento = GeradorDePagamento(daoFalse, avaliadorFalso, pagamentos)
        geradorDePagamento.gera()

        let capturadorDeArgumento = ArgumentCaptor<Pagamento>()
        verify(pagamentos).salva(capturadorDeArgumento.capture())

        let pagamentoGerado = capturadorDeArgumento.value

        XCTAssertEqual(2500.0, pagamentoGerado?.getValor())
    }

    // Sem utilizar Mock (Neste caso por ser simples, sem mock no Avaliador é mais simples, pois a classe não tem alta complexidade)
    func testDeveGerarPagamentoParaUmLeilaoEncerradoSemUtilizarMock() {
        let playstation = CriadorDeLeilao().para(descricao: "Playstation")
            .lance(Usuario(id: 1, nome: "Jose"), 2000.0)
            .lance(Usuario(id: 2, nome: "Maria"), 2500.0)
            .constroi()

        stub(daoFalse) { (daoFalse) in
            when(daoFalse.encerrados()).thenReturn([playstation])
        }

        let geradorDePagamento = GeradorDePagamento(daoFalse, avaliador, pagamentos)
        geradorDePagamento.gera()

        let capturadorDeArgumento = ArgumentCaptor<Pagamento>()
        verify(pagamentos).salva(capturadorDeArgumento.capture())

        let pagamentoGerado = capturadorDeArgumento.value

        XCTAssertEqual(2500.0, pagamentoGerado?.getValor())
    }

    func testDeveEmpurrarParaProximoDiaUtil() {
        let iphone = CriadorDeLeilao().para(descricao: "iPhone")
            .lance(Usuario(id: 1, nome: "Joao"), 2000.0)
            .lance(Usuario(id: 2, nome: "Maria"), 2500.0)
            .constroi()

        stub(daoFalse) { (daoFalse) in
            when(daoFalse.encerrados()).thenReturn([iphone])
        }

        let formatadorDeData = DateFormatter()
        formatadorDeData.dateFormat = "yyyy/MM/dd"

        guard let dataAntiga = formatadorDeData.date(from: "2018/05/19") else { return }

        let geradorDePagamento = GeradorDePagamento(daoFalse, avaliador, pagamentos, dataAntiga)
        geradorDePagamento.gera()

        let capturadorDePagamento = ArgumentCaptor<Pagamento>()
        verify(pagamentos).salva(capturadorDePagamento.capture())

        let pagamentoGerado = capturadorDePagamento.value
        formatadorDeData.dateFormat = "ccc"

        guard let dataDoPagamento = pagamentoGerado?.getData() else { return }
        let diaDaSemana = formatadorDeData.string(from: dataDoPagamento)

        XCTAssertEqual("Mon", diaDaSemana)
    }

}
