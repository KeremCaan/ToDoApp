//
//  IsDetayRouter.swift
//  odev7
//
//  Created by MacbookPro on 28.08.2022.
//

import Foundation

class IsDetayRouter : PresenterToRouterIsDetayProtocol {
    static func createModule(ref: IsDetayVC) {
        ref.isDetayPresenterNesnesi = IsDetayPresenter()
        ref.isDetayPresenterNesnesi?.isDetayInteractor = IsDetayInteractor()
    }
}
