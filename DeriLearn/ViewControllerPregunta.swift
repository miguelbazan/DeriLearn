//
//  ViewControllerPregunta.swift
//  DeriLearn
//
//  Created by Luis Salomon Flores Ugalde on 4/20/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerPregunta: UIViewController {

    var ArrDic : NSArray!
    var Dic : NSDictionary!
    var numPreg : Int!
    var numDic : Int!
    var numCorr : Int!
    var numArray : Int!
    /*
     Pregunta   String
     Correcta   String
     Respuestas [String]
     */
    @IBOutlet weak var lbPreg: UILabel!
    @IBOutlet weak var btnPregUno: UIButton!
    @IBOutlet weak var btnPregDos: UIButton!
    @IBOutlet weak var btnPregTres: UIButton!
    @IBOutlet weak var btnPregCuatro: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        numPreg = 0
        numDic = 0
        numCorr = 0
        LoadDictionary()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func LoadDictionary(){
        if(numDic != ArrDic.count){
            
            Dic = ArrDic.object(at: numDic) as! NSDictionary
            numDic  = numDic + 1
            LoadQuestion()
        }else{
            Mensaje()
        }
    }
    
    func LoadQuestion(){
        lbPreg.text = Dic.object(forKey:"Pregunta") as? String
        let arrResp = Dic.object(forKey: "Respuestas") as! [String]
        btnPregUno.setTitle(arrResp[0], for: .normal)
        btnPregDos.setTitle(arrResp[1], for: .normal)
        btnPregTres.setTitle(arrResp[2], for: .normal)
        btnPregCuatro.setTitle(arrResp[3], for: .normal)
    }
    
    
    // MARK: - Resp
    
    @IBAction func btnAction(_ sender: UIButton) {
        if(sender.titleLabel?.text == Dic.object(forKey:"Correcta") as? String){
            numCorr = numCorr + 1
            //guardar correcto
            //numArray *seria el boton que le pica, 0,1,2,3 en orden
            quickSaveCorr()
            MensajeCorrectoPreg()
            //LoadDictionary()
        }else{
            quickSaveInc()
            MensajeErrorPreg()
        }
        
    }
    
    func MensajeCorrectoPreg(){
        let message = ""
        
        let alert = UIAlertController(title: "¡Correcto!", message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in self.LoadDictionary()
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func MensajeErrorPreg(){
        
        let message = ""
        
        let alert = UIAlertController(title: "Incorrecto", message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in self.LoadDictionary()
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    // MARK : Regreso
    func Mensaje(){
        let num = String(numCorr)
        let message = "Correctas : " + num
        let alert = UIAlertController(title: "Evaluacion", message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
            action in self.GoBack()
        }))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    func quickSaveCorr(){
         let path = Bundle.main.path(forResource: "PregPun", ofType: "plist")
        let DicResp = NSMutableDictionary(contentsOfFile: path!)
        let arrResp = DicResp?.object(forKey: "Problemas") as! NSMutableArray
        let num = (arrResp.object(at: numArray) as? Int)! + 1
        arrResp.replaceObject(at: numArray, with: num)
         DicResp?.write(toFile: path!, atomically: true)
    }
    func quickSaveInc(){
         let path = Bundle.main.path(forResource: "PregPun", ofType: "plist")
        let DicResp = NSMutableDictionary(contentsOfFile: path!)
        let arrErro = DicResp?.object(forKey: "Incorrectas") as! NSMutableArray
        let numIn = (arrErro.object(at: numArray) as? Int)! + 1
        arrErro.replaceObject(at: numArray, with: numIn)
         DicResp?.write(toFile: path!, atomically: true)
    }
    func GoBack(){
        _ = navigationController?.popViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override var shouldAutorotate: Bool {
        
        return false
        
    }


}
