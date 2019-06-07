//
//  EncerradorDeLeilaoTests.swift
//  LeilaoTests
//
//  Created by Lucas Valle on 06/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import XCTest
@testable import Leilao

class EncerradorDeLeilaoATests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDeveEncerrarLeiloesQueComecaramUmaSemanaAntes() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"

        guard let oldDate = formatter.date(from: "2019/05/09") else { return }

        let tvLed = CriadorDeLeilao().para(descricao: "TV LED").naData(data: oldDate).constroi()
        let geladeira = CriadorDeLeilao().para(descricao: "Geladeira").naData(data: oldDate).constroi()

        let dao = LeilaoDaoMock()
        dao.salva(tvLed)
        dao.salva(geladeira)

        let encerradorDeLeilao = EncerradorDeLeilao(dao)
        encerradorDeLeilao.encerra()

        let leiloesEncerrados = dao.encerrados()

        XCTAssertEqual(2, leiloesEncerrados.count)

        XCTAssertTrue(leiloesEncerrados[0].isEncerrado()!)
        XCTAssertTrue(leiloesEncerrados[1].isEncerrado()!)
    }

}
