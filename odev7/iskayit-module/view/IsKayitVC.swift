//
//  IsKayitVC.swift
//  odev7
//
//  Created by MacbookPro on 27.08.2022.
//

import UIKit

class IsKayitVC: UIViewController {
    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var IsKayitPresenterNesnesi:ViewToPresenterIsKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        IsKayitRouter.createModule(ref: self)
    }
    @IBAction func butonEkle(_ sender: Any) {
        if let ka = tfYapilacakIs.text {
            IsKayitPresenterNesnesi?.ekle(yapilacak_is: ka)
    }
    
    
}
}
