//
//  LeilaoDao.swift
//  Leilao
//
//  Created by Ândriu Coelho on 22/05/18.
//  Copyright © 2018 Alura. All rights reserved.
//

import UIKit

 protocol LeilaoDaoProtocol {
    
    func salva(_ leilao: Leilao)
    
    func correntes() -> [Leilao]
    
    func encerrados() -> [Leilao]
    
    func atualiza(_ leilao:Leilao) throws
}
