//
//  IsDetayVC.swift
//  odev7
//
//  Created by MacbookPro on 27.08.2022.
//

import UIKit

class IsDetayVC: UIViewController {
    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var Is:Isler?
    var isDetayPresenterNesnesi:ViewToPresenterIsDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IsDetayRouter.createModule(ref: self)

        if let k = Is {
            tfYapilacakIs.text = k.yapilacak_is
        }
    }
        
        @IBAction func butonGuncelle(_ sender: Any) {
            if let ka = tfYapilacakIs.text , let k = Is {
                isDetayPresenterNesnesi?.guncelle(yapilacak_id: k.yapilacak_id!, yapilacak_is: ka)
        }
    }
}
