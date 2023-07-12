//
//  IsKayitProtocols.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

protocol ViewToPresenterIsKayitProtocol {
    var isKayitInteractor:PresenterToInteractorIsKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorIsKayitProtocol {
    func isEkle(yapilacak_is:String)
}

protocol PresenterToRouterIsKayitProtocol {
    static func createModule(ref:IsKayitVC)
}
