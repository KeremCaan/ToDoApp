//
//  AnasayfaPresenter.swift
//  odev7
//
//  Created by MacbookPro on 27.08.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    func isleriYukle() {
        anasayfaInteractor?.tumIsleriAl()
    }
    
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
        
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.isAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(yapilacak_id: Int) {
        anasayfaInteractor?.isSil(yapilacak_id: yapilacak_id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(islerListesi: Array<Isler>) {
        anasayfaView?.vieweVeriGonder(islerListesi: islerListesi)
    }
}
