//
//  IsDetayPresenter.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

class IsDetayPresenter : ViewToPresenterIsDetayProtocol {
    var isDetayInteractor: PresenterToInteractorIsDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        isDetayInteractor?.isGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}
