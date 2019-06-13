// MARK: - Mocks generated from file: Leilao/Dao/LeilaoDao.swift at 2019-06-09 21:54:05 +0000

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


// MARK: - Mocks generated from file: Leilao/Models/Avaliador.swift at 2019-06-09 21:54:05 +0000

//
//  Avaliador.swift
//  Leilao
//
//  Created by Alura Laranja on 04/05/18.
//  Copyright © 2018 Alura. All rights reserved.
//

import Cuckoo
@testable import Leilao

import Foundation

class MockAvaliador: Avaliador, Cuckoo.ClassMock {
    typealias MocksType = Avaliador
    typealias Stubbing = __StubbingProxy_Avaliador
    typealias Verification = __VerificationProxy_Avaliador

    private var __defaultImplStub: Avaliador?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: Avaliador) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
     override var maiorDeTodos: Double {
        get {
            return cuckoo_manager.getter("maiorDeTodos",
                superclassCall:
                    
                    super.maiorDeTodos
                    ,
                defaultCall: __defaultImplStub!.maiorDeTodos)
        }
        
        set {
            cuckoo_manager.setter("maiorDeTodos",
                value: newValue,
                superclassCall:
                    
                    super.maiorDeTodos = newValue
                    ,
                defaultCall: __defaultImplStub!.maiorDeTodos = newValue)
        }
        
    }
    
    
     override var menorDeTodos: Double {
        get {
            return cuckoo_manager.getter("menorDeTodos",
                superclassCall:
                    
                    super.menorDeTodos
                    ,
                defaultCall: __defaultImplStub!.menorDeTodos)
        }
        
        set {
            cuckoo_manager.setter("menorDeTodos",
                value: newValue,
                superclassCall:
                    
                    super.menorDeTodos = newValue
                    ,
                defaultCall: __defaultImplStub!.menorDeTodos = newValue)
        }
        
    }
    

    

    
    // ["name": "avalia", "returnSignature": " throws", "fullyQualifiedName": "avalia(leilao: Leilao) throws", "parameterSignature": "leilao: Leilao", "parameterSignatureWithoutNames": "leilao: Leilao", "inputTypes": "Leilao", "isThrowing": true, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "leilao", "call": "leilao: leilao", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("leilao"), name: "leilao", type: "Leilao", range: CountableRange(479..<492), nameRange: CountableRange(479..<485))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "leilao", "stubFunction": "Cuckoo.ClassStubNoReturnThrowingFunction"]
     override func avalia(leilao: Leilao)  throws {
        
            return try cuckoo_manager.callThrows("avalia(leilao: Leilao) throws",
                parameters: (leilao),
                escapingParameters: (leilao),
                superclassCall:
                    
                    super.avalia(leilao: leilao)
                    ,
                defaultCall: __defaultImplStub!.avalia(leilao: leilao))
        
    }
    
    // ["name": "maiorLance", "returnSignature": " -> Double", "fullyQualifiedName": "maiorLance() -> Double", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Double", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func maiorLance()  -> Double {
        
            return cuckoo_manager.call("maiorLance() -> Double",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.maiorLance()
                    ,
                defaultCall: __defaultImplStub!.maiorLance())
        
    }
    
    // ["name": "menorLance", "returnSignature": " -> Double", "fullyQualifiedName": "menorLance() -> Double", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Double", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func menorLance()  -> Double {
        
            return cuckoo_manager.call("menorLance() -> Double",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.menorLance()
                    ,
                defaultCall: __defaultImplStub!.menorLance())
        
    }
    
    // ["name": "tresMaiores", "returnSignature": " -> [Lance]", "fullyQualifiedName": "tresMaiores() -> [Lance]", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "[Lance]", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func tresMaiores()  -> [Lance] {
        
            return cuckoo_manager.call("tresMaiores() -> [Lance]",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.tresMaiores()
                    ,
                defaultCall: __defaultImplStub!.tresMaiores())
        
    }
    

	struct __StubbingProxy_Avaliador: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var maiorDeTodos: Cuckoo.ClassToBeStubbedProperty<MockAvaliador, Double> {
	        return .init(manager: cuckoo_manager, name: "maiorDeTodos")
	    }
	    
	    var menorDeTodos: Cuckoo.ClassToBeStubbedProperty<MockAvaliador, Double> {
	        return .init(manager: cuckoo_manager, name: "menorDeTodos")
	    }
	    
	    
	    func avalia<M1: Cuckoo.Matchable>(leilao: M1) -> Cuckoo.ClassStubNoReturnThrowingFunction<(Leilao)> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAvaliador.self, method: "avalia(leilao: Leilao) throws", parameterMatchers: matchers))
	    }
	    
	    func maiorLance() -> Cuckoo.ClassStubFunction<(), Double> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAvaliador.self, method: "maiorLance() -> Double", parameterMatchers: matchers))
	    }
	    
	    func menorLance() -> Cuckoo.ClassStubFunction<(), Double> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAvaliador.self, method: "menorLance() -> Double", parameterMatchers: matchers))
	    }
	    
	    func tresMaiores() -> Cuckoo.ClassStubFunction<(), [Lance]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAvaliador.self, method: "tresMaiores() -> [Lance]", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_Avaliador: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var maiorDeTodos: Cuckoo.VerifyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "maiorDeTodos", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var menorDeTodos: Cuckoo.VerifyProperty<Double> {
	        return .init(manager: cuckoo_manager, name: "menorDeTodos", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func avalia<M1: Cuckoo.Matchable>(leilao: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Leilao {
	        let matchers: [Cuckoo.ParameterMatcher<(Leilao)>] = [wrap(matchable: leilao) { $0 }]
	        return cuckoo_manager.verify("avalia(leilao: Leilao) throws", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func maiorLance() -> Cuckoo.__DoNotUse<Double> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("maiorLance() -> Double", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func menorLance() -> Cuckoo.__DoNotUse<Double> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("menorLance() -> Double", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tresMaiores() -> Cuckoo.__DoNotUse<[Lance]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("tresMaiores() -> [Lance]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AvaliadorStub: Avaliador {
    
     override var maiorDeTodos: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
        set { }
        
    }
    
     override var menorDeTodos: Double {
        get {
            return DefaultValueRegistry.defaultValue(for: (Double).self)
        }
        
        set { }
        
    }
    

    

    
     override func avalia(leilao: Leilao)  throws {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func maiorLance()  -> Double {
        return DefaultValueRegistry.defaultValue(for: Double.self)
    }
    
     override func menorLance()  -> Double {
        return DefaultValueRegistry.defaultValue(for: Double.self)
    }
    
     override func tresMaiores()  -> [Lance] {
        return DefaultValueRegistry.defaultValue(for: [Lance].self)
    }
    
}


// MARK: - Mocks generated from file: Leilao/Models/Carteiro.swift at 2019-06-09 21:54:05 +0000

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


// MARK: - Mocks generated from file: Leilao/Models/RepositorioDePagamento.swift at 2019-06-09 21:54:05 +0000

//
//  RepositorioDePagamento.swift
//  Leilao
//
//  Created by Lucas Valle on 09/06/2019.
//  Copyright © 2019 Alura. All rights reserved.
//

import Cuckoo
@testable import Leilao

import Foundation

class MockRepositorioDePagamento: RepositorioDePagamento, Cuckoo.ClassMock {
    typealias MocksType = RepositorioDePagamento
    typealias Stubbing = __StubbingProxy_RepositorioDePagamento
    typealias Verification = __VerificationProxy_RepositorioDePagamento

    private var __defaultImplStub: RepositorioDePagamento?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: RepositorioDePagamento) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "salva", "returnSignature": "", "fullyQualifiedName": "salva(_: Pagamento)", "parameterSignature": "_ pagamento: Pagamento", "parameterSignatureWithoutNames": "pagamento: Pagamento", "inputTypes": "Pagamento", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "pagamento", "call": "pagamento", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "pagamento", type: "Pagamento", range: CountableRange(212..<234), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "pagamento", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func salva(_ pagamento: Pagamento)  {
        
            return cuckoo_manager.call("salva(_: Pagamento)",
                parameters: (pagamento),
                escapingParameters: (pagamento),
                superclassCall:
                    
                    super.salva(pagamento)
                    ,
                defaultCall: __defaultImplStub!.salva(pagamento))
        
    }
    

	struct __StubbingProxy_RepositorioDePagamento: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func salva<M1: Cuckoo.Matchable>(_ pagamento: M1) -> Cuckoo.ClassStubNoReturnFunction<(Pagamento)> where M1.MatchedType == Pagamento {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagamento)>] = [wrap(matchable: pagamento) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRepositorioDePagamento.self, method: "salva(_: Pagamento)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_RepositorioDePagamento: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func salva<M1: Cuckoo.Matchable>(_ pagamento: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Pagamento {
	        let matchers: [Cuckoo.ParameterMatcher<(Pagamento)>] = [wrap(matchable: pagamento) { $0 }]
	        return cuckoo_manager.verify("salva(_: Pagamento)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class RepositorioDePagamentoStub: RepositorioDePagamento {
    

    

    
     override func salva(_ pagamento: Pagamento)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

