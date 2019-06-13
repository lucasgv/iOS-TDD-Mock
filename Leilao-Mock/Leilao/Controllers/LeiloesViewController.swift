//
//  LeiloesViewController.swift
//  Leilao
//
//  Created by Lucas Valle on 11/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit

class LeiloesViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!

    // MARK: - Variables

    private var listaDeLeiloes: [Leilao] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Methods

    func addLeilao(_ leilao: Leilao) {
        listaDeLeiloes.append(leilao)
    }

}

// MARK: - Extension UITableViewDataSource

extension LeiloesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeLeiloes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeilaoTableViewCell", for: indexPath)

        return cell
    }
}
