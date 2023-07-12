//
//  IsDetayProtocol.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

protocol ViewToPresenterIsDetayProtocol {
    var isDetayInteractor:PresenterToInteractorIsDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorIsDetayProtocol {
    func isGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterIsDetayProtocol {
    static func createModule(ref:IsDetayVC)
}
