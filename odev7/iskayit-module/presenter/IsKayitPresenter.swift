//
//  IsKayitPresenter.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

class IsKayitPresenter : ViewToPresenterIsKayitProtocol {
    var isKayitInteractor: PresenterToInteractorIsKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        isKayitInteractor?.isEkle(yapilacak_is: yapilacak_is)
    }
}
