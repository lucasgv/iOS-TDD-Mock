//
//  LeiloesViewControllerTests.swift
//  LeilaoTests
//
//  Created by Lucas Valle on 11/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import XCTest
@testable import Leilao

class LeiloesViewControllerTests: XCTestCase {

    // abreviação system under test
    var sut: LeiloesViewController!
    var tableView: UITableView!

    override func setUp() {
        sut = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LeiloesViewController") as! LeiloesViewController
        _ = sut.view
        tableView = sut.tableView
        tableView.dataSource = sut
    }

    override func tearDown() {
    }

    // Garante caso alguem apague o outlet da TableView, verificar se a tableView existe
    func testTableViewNaoDeveEstarNilAposViewDidLoad() {
        //Para executar o viewDidLoad chamar conforme abaixo
        _ = sut.view

        // Verifica se o outlet dele existe
        XCTAssertNotNil(sut.tableView)
    }

    //Verificar se os protocolos obrigatorios da tableView estão implementados
    func testDataSourceDaTableViewNaoDeveSerNil() {
        //Para executar o viewDidLoad chamar conforme abaixo
        _ = sut.view

        // Verifica se o protocolo está implementado
        XCTAssertNotNil(sut.tableView.dataSource)

        // Verifica quem está implementado o protocolo
        XCTAssertNotNil(sut.tableView.dataSource is LeiloesViewController)
    }

    func testNumberOfRowsInSectionDeveSerAQuantidadeDeLeiloesDaLista() {

        sut.addLeilao(Leilao(descricao: "Playstation 4"))

        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)

        sut.addLeilao(Leilao(descricao: "Iphone X"))
        tableView.reloadData()
            
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)

    }

    func testCellForRowDeveRetornarLeilaoTableViewCell() {
        sut.addLeilao(Leilao(descricao: "TV Led"))
        tableView.reloadData()

        let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0))

        XCTAssertTrue(cell is LeilaoTableViewCell)
    }

    func testCellForRowDeveChamarDequeueReusableCell() {
        let mockTableView = MockTableView()
        mockTableView.dataSource = sut
        mockTableView.register(LeilaoTableViewCell.self, forCellReuseIdentifier: "LeilaoTableViewCell")

        sut.addLeilao(Leilao(descricao: "Macbook Pro"))
        mockTableView.reloadData()

        _ = mockTableView.cellForRow(at: IndexPath(row: 0, section: 0))
        XCTAssertTrue(mockTableView.celulaFoiReutilizada)
    }

}

extension LeiloesViewControllerTests {

    class MockTableView: UITableView {

        var celulaFoiReutilizada = false

        override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
            celulaFoiReutilizada = true
            return super.dequeueReusableCell(withIdentifier: "LeilaoTableViewCell", for: indexPath)
        }
    }
}
