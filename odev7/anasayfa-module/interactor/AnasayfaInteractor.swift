//
//  AnasayfaInteractor.swift
//  odev7
//
//  Created by MacbookPro on 27.08.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func tumIsleriAl() {
        var liste = [Isler]()
        
        db?.open()
        
        do{
            let q = try db!.executeQuery("SELECT * FROM isler ", values: nil)
            
            while q.next() {
                let Is = Isler(yapilacak_id: Int(q.string(forColumn: "yapilacak_id"))!, yapilacak_is: q.string(forColumn: "yapilacak_is")!)
                liste.append(Is)
            }
            anasayfaPresenter?.presenteraVeriGonder(islerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
        
    }
    
    func isAra(aramaKelimesi: String) {
        var liste = [Isler]()
        
        db?.open()
        
        do{
            let q = try db!.executeQuery("SELECT * FROM isler WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while q.next() {
                let Is = Isler(yapilacak_id: Int(q.string(forColumn: "yapilacak_id"))!, yapilacak_is: q.string(forColumn: "yapilacak_is")!)
                liste.append(Is)
            }
            anasayfaPresenter?.presenteraVeriGonder(islerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
    
    func isSil(yapilacak_id: Int) {
        
        db?.open()
        
        do{
            let q = try db!.executeUpdate("DELETE FROM isler WHERE yapilacak_id = ?", values: [yapilacak_id])
            tumIsleriAl()
        }catch{
            print(error.localizedDescription)
        }
        
        
        db?.close()
    }
}
