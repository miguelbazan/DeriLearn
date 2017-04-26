//
//  ViewControllerRetroPractica.swift
//  DeriLearn
//
//  Created by Luis Salomon Flores Ugalde on 4/25/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerRetroPractica: UIViewController {

    
    @IBOutlet weak var corPoli: UILabel!
    @IBOutlet weak var incPoli: UILabel!
    @IBOutlet weak var corLog: UILabel!
    @IBOutlet weak var incLog: UILabel!
    @IBOutlet weak var corExp: UILabel!
    @IBOutlet weak var incExp: UILabel!
    @IBOutlet weak var corTri: UILabel!
    @IBOutlet weak var incTri: UILabel!
    override func viewDidLoad() {
        self.title = "Estadísticas"
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "PregPun", ofType: "plist")
        //Es un Array que los
        let DicResp = NSMutableDictionary(contentsOfFile: path!)
        let arrResp = DicResp?.object(forKey: "Problemas") as! NSMutableArray
        let arrErro = DicResp?.object(forKey: "Incorrectas") as! NSMutableArray
        // Do any additional setup after loading the view.
        corPoli.text = String((arrResp.object(at: 0) as? Int)!)
        corTri.text = String((arrResp.object(at: 1) as? Int)!)
        corLog.text = String((arrResp.object(at: 2) as? Int)!)
        corExp.text = String((arrResp.object(at: 3) as? Int)!)
        
        incPoli.text = String((arrErro.object(at: 0) as? Int)!)
        incTri.text = String((arrErro.object(at: 1) as? Int)!)
        incLog.text = String((arrErro.object(at: 2) as? Int)!)
        incExp.text = String((arrErro.object(at: 3) as? Int)!)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
