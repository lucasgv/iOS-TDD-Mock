//
//  EncerradorDeLeilaoTests.swift
//  LeilaoTests
//
//  Created by Lucas Valle on 06/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import XCTest
@testable import Leilao
import Cuckoo

class EncerradorDeLeilaoATests: XCTestCase {

    var formatter: DateFormatter!
    var encerradorDeLeilao: EncerradorDeLeilao!
    var daoFalso: MockLeilaoDao!
    var carteiroFalso: MockCarteiro!

    override func setUp() {
        super.setUp()
        formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        daoFalso = MockLeilaoDao().withEnabledSuperclassSpy()
        carteiroFalso = MockCarteiro().withEnabledSuperclassSpy()
        encerradorDeLeilao = EncerradorDeLeilao(daoFalso, carteiroFalso)
    }

    override func tearDown() {
        super.tearDown()
    }

    // Usando mock criado manualmente sem framework, mantendo apenas para histórico
    func testDeveEncerrarLeiloesQueComecaramUmaSemanaAntes() {

        guard let oldDate = formatter.date(from: "2019/05/09") else { return }

        let tvLed = CriadorDeLeilao().para(descricao: "TV LED").naData(data: oldDate).constroi()
        let geladeira = CriadorDeLeilao().para(descricao: "Geladeira").naData(data: oldDate).constroi()

        let dao = LeilaoDaoMock()
        dao.salva(tvLed)
        dao.salva(geladeira)

        let encerradorDeLeilaoMockManual = EncerradorDeLeilao(dao, Carteiro())
        encerradorDeLeilaoMockManual.encerra()

        let leiloesEncerrados = dao.encerrados()

        XCTAssertEqual(2, leiloesEncerrados.count)

        XCTAssertTrue(leiloesEncerrados[0].isEncerrado()!)
        XCTAssertTrue(leiloesEncerrados[1].isEncerrado()!)
    }

    //Usando framework Cuckoo para criar os mocks e ensinando ele a criar
    func testDeveEncerrarLeiloesQueComecaramUmaSemanaAntesUsandoCuckoo() {

        guard let oldDate = formatter.date(from: "2019/05/09") else { return }

        let tvLed = CriadorDeLeilao().para(descricao: "TV LED").naData(data: oldDate).constroi()
        let geladeira = CriadorDeLeilao().para(descricao: "Geladeira").naData(data: oldDate).constroi()

        stub(daoFalso) { (daoFalso) in
            when(daoFalso.correntes()).thenReturn([tvLed,geladeira])
        }

        encerradorDeLeilao.encerra()

        XCTAssertEqual(2, encerradorDeLeilao.getTotalEncerrados())

        guard let statusTVLed = tvLed.isEncerrado() else { return }
        guard let statusGeladeira = geladeira.isEncerrado() else { return }
        XCTAssertTrue(statusTVLed)
        XCTAssertTrue(statusGeladeira)
    }

    // Verificar pelo Cuckoo se o método atualiza foi invocado
    func testDeveAtualizarLeiloesAtualizados() {
        guard let oldDate = formatter.date(from: "2019/05/19") else { return }
        let tvLed = CriadorDeLeilao().para(descricao: "TV LED").naData(data: oldDate).constroi()
        stub(daoFalso) { (daoFalso) in
            when(daoFalso.correntes()).thenReturn([tvLed])
        }

        let encerradorDeLeilao = EncerradorDeLeilao(daoFalso, Carteiro())
        encerradorDeLeilao.encerra()

        verify(daoFalso).atualiza(tvLed)
    }

    func testDeveContinuarExecucaoMesmoQuandoDaoFalhar() {
        guard let oldDate = formatter.date(from: "2019/05/19") else { return }

        let tvLed = CriadorDeLeilao().para(descricao: "Tv LEd").naData(data: oldDate).constroi()
        let geladeira = CriadorDeLeilao().para(descricao: "Geladeira").naData(data: oldDate).constroi()

        let error = NSError(domain: "Error", code: 0, userInfo: nil)

        stub(daoFalso) { (daoFalso) in
            when(daoFalso.correntes()).thenReturn([tvLed, geladeira])
            when(daoFalso.atualiza(tvLed)).thenThrow(error)
        }

        encerradorDeLeilao.encerra()

        verify(daoFalso).atualiza(geladeira)
        verify(carteiroFalso).envia(geladeira)

        //Para verificar que o erro forçado está realmente funcionando
        //verify(carteiroFalso).envia(tvLed)
    }

}

extension Leilao: Matchable {
    public var matcher: ParameterMatcher<Leilao> {
        return equal(to: self)
    }
}
