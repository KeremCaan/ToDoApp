//
//  IsKayitRouter.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

class IsKayitRouter : PresenterToRouterIsKayitProtocol {
    static func createModule(ref: IsKayitVC) {
        ref.IsKayitPresenterNesnesi = IsKayitPresenter()
        ref.IsKayitPresenterNesnesi?.isKayitInteractor = IsKayitInteractor()
    }
}
