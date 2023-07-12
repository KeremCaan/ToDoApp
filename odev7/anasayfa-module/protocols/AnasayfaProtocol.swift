//
//  AnasayfaProtocol.swift
//  odev7
//
//  Created by MacbookPro on 27.08.2022.
//

import Foundation

//Ana protocoller
protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func isleriYukle()
    func ara(aramaKelimesi:String)
    func sil(yapilacak_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumIsleriAl()
    func isAra(aramaKelimesi:String)
    func isSil(yapilacak_id:Int)
}

//Taşıyıcı protocoller
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(islerListesi:Array<Isler>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(islerListesi:Array<Isler>)
}

//Router
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
