// MARK: - Mocks generated from file: Leilao/Dao/LeilaoDao.swift at 2019-06-09 18:21:04 +0000

//
//  LeilaoDaoTrue.swift
//  Leilao
//
//  Created by Lucas Valle on 06/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Cuckoo
@testable import Leilao

import SQLite3
import UIKit

class MockLeilaoDao: LeilaoDao, Cuckoo.ClassMock {
    typealias MocksType = LeilaoDao
    typealias Stubbing = __StubbingProxy_LeilaoDao
    typealias Verification = __VerificationProxy_LeilaoDao

    private var __defaultImplStub: LeilaoDao?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: LeilaoDao) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "executaQuery", "returnSignature": "", "fullyQualifiedName": "executaQuery(_: String)", "parameterSignature": "_ sql: String", "parameterSignatureWithoutNames": "sql: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "sql", "call": "sql", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "sql", type: "String", range: CountableRange(1217..<1229), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "sql", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func executaQuery(_ sql: String)  {
        
            return cuckoo_manager.call("executaQuery(_: String)",
                parameters: (sql),
                escapingParameters: (sql),
                superclassCall:
                    
                    super.executaQuery(sql)
                    ,
                defaultCall: __defaultImplStub!.executaQuery(sql))
        
    }
    
    // ["name": "salva", "returnSignature": "", "fullyQualifiedName": "salva(_: Leilao)", "parameterSignature": "_ leilao: Leilao", "parameterSignatureWithoutNames": "leilao: Leilao", "inputTypes": "Leilao", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "leilao", "call": "leilao", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "leilao", type: "Leilao", range: CountableRange(1306..<1321), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "leilao", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func salva(_ leilao: Leilao)  {
        
            return cuckoo_manager.call("salva(_: Leilao)",
                parameters: (leilao),
                escapingParameters: (leilao),
                superclassCall:
                    
                    super.salva(leilao)
                    ,
                defaultCall: __defaultImplStub!.salva(leilao))
        
    }
    
    // ["name": "correntes", "returnSignature": " -> [Leilao]", "fullyQualifiedName": "correntes() -> [Leilao]", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "[Leilao]", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func correntes()  -> [Leilao] {
        
            return cuckoo_manager.call("correntes() -> [Leilao]",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.correntes()
                    ,
                defaultCall: __defaultImplStub!.correntes())
        
    }
    
    // ["name": "encerrados", "returnSignature": " -> [Leilao]", "fullyQualifiedName": "encerrados() -> [Leilao]", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "[Leilao]", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func encerrados()  -> [Leilao] {
        
            return cuckoo_manager.call("encerrados() -> [Leilao]",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.encerrados()
                    ,
                defaultCall: __defaultImplStub!.encerrados())
        
    }
    
    // ["name": "atualiza", "returnSignature": " throws", "fullyQualifiedName": "atualiza(_: Leilao) throws", "parameterSignature": "_ leilao: Leilao", "parameterSignatureWithoutNames": "leilao: Leilao", "inputTypes": "Leilao", "isThrowing": true, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "leilao", "call": "leilao", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "leilao", type: "Leilao", range: CountableRange(3596..<3612), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "leilao", "stubFunction": "Cuckoo.ClassStubNoReturnThrowingFunction"]
     override func atualiza(_ leilao: Leilao)  throws {
        
            return try cuckoo_manager.callThrows("atualiza(_: Leilao) throws",
                parameters: (leilao),
                escapingParameters: (leilao),
                superclassCall:
                    
                    super.atualiza(leilao)
                    ,
                defaultCall: __defaultImplStub!.atualiza(leilao))
        
    }
    

	struct __StubbingProxy_LeilaoDao: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func executaQuery<M1: Cuckoo.Matchable>(_ sql: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: sql) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLeilaoDao.self, method: "executaQuery(_: String)", parameterMatchers: matchers))
	    }
	    
	    func salva<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.ClassStubNoReturnFunction<(Leilao)> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLeilaoDao.self, method: "salva(_: Leilao)", parameterMatchers: matchers))
	    }
	    
	    func correntes() -> Cuckoo.ClassStubFunction<(), [Leilao]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLeilaoDao.self, method: "correntes() -> [Leilao]", parameterMatchers: matchers))
	    }
	    
	    func encerrados() -> Cuckoo.ClassStubFunction<(), [Leilao]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLeilaoDao.self, method: "encerrados() -> [Leilao]", parameterMatchers: matchers))
	    }
	    
	    func atualiza<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.ClassStubNoReturnThrowingFunction<(Leilao)> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockLeilaoDao.self, method: "atualiza(_: Leilao) throws", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_LeilaoDao: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func executaQuery<M1: Cuckoo.Matchable>(_ sql: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: sql) { $0 }]
	        return cuckoo_manager.verify("executaQuery(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func salva<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return cuckoo_manager.verify("salva(_: Leilao)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func correntes() -> Cuckoo.__DoNotUse<[Leilao]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("correntes() -> [Leilao]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func encerrados() -> Cuckoo.__DoNotUse<[Leilao]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("encerrados() -> [Leilao]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func atualiza<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return cuckoo_manager.verify("atualiza(_: Leilao) throws", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class LeilaoDaoStub: LeilaoDao {
    

    

    
     override func executaQuery(_ sql: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func salva(_ leilao: Leilao)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func correntes()  -> [Leilao] {
        return DefaultValueRegistry.defaultValue(for: [Leilao].self)
    }
    
     override func encerrados()  -> [Leilao] {
        return DefaultValueRegistry.defaultValue(for: [Leilao].self)
    }
    
     override func atualiza(_ leilao: Leilao)  throws {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: Leilao/Models/Carteiro.swift at 2019-06-09 18:21:04 +0000

//
//  Carteiro.swift
//  Leilao
//
//  Created by Lucas Valle on 09/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Cuckoo
@testable import Leilao

import Foundation

class MockCarteiro: Carteiro, Cuckoo.ClassMock {
    typealias MocksType = Carteiro
    typealias Stubbing = __StubbingProxy_Carteiro
    typealias Verification = __VerificationProxy_Carteiro

    private var __defaultImplStub: Carteiro?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: Carteiro) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "envia", "returnSignature": "", "fullyQualifiedName": "envia(_: Leilao)", "parameterSignature": "_ leilao: Leilao", "parameterSignatureWithoutNames": "leilao: Leilao", "inputTypes": "Leilao", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "leilao", "call": "leilao", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "leilao", type: "Leilao", range: CountableRange(184..<200), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "leilao", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func envia(_ leilao: Leilao)  {
        
            return cuckoo_manager.call("envia(_: Leilao)",
                parameters: (leilao),
                escapingParameters: (leilao),
                superclassCall:
                    
                    super.envia(leilao)
                    ,
                defaultCall: __defaultImplStub!.envia(leilao))
        
    }
    

	struct __StubbingProxy_Carteiro: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func envia<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.ClassStubNoReturnFunction<(Leilao)> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCarteiro.self, method: "envia(_: Leilao)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Carteiro: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func envia<M1: Cuckoo.Matchable>(_ leilao: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return cuckoo_manager.verify("envia(_: Leilao)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CarteiroStub: Carteiro {
    

    

    
     override func envia(_ leilao: Leilao)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

