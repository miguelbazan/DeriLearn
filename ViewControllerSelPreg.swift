//
//  ViewControllerSelPreg.swift
//  DeriLearn
//
//  Created by Luis Salomon Flores Ugalde on 4/20/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerSelPreg: UIViewController {

    /*
     Lo que esta dentro del property list seria:
     item 0  //Polinomiales
        -----item 0 //Pregunta 1
            ----Pregunta
            ----Correcta
            ----Respuestas [String]
                ---Resp1
                ---Resp2
                ---Resp3
                ---Resp4
        -----item 1 //Pregunta 2
     item 1 //Trigonometricas
     item 2 //Logaritmicas
     item 3 //Exponenciales
     */
    var arrArrDictionary : NSArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        //Es un Array que tiene Array de diccionarios
        arrArrDictionary = NSArray(contentsOfFile: path!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //es un Array que tiene Diccionarios
        if(segue.identifier == "poli"){
            let dest = segue.destination as! ViewControllerPregunta
            let arrDictionary = arrArrDictionary[0] as! NSArray
            dest.ArrDic = arrDictionary
            
        }
        if(segue.identifier == "trig"){
            let dest = segue.destination as! ViewControllerPregunta
            let arrDictionary = arrArrDictionary[1] as! NSArray
            dest.ArrDic = arrDictionary
            
        }
        if(segue.identifier == "log"){
            let dest = segue.destination as! ViewControllerPregunta
            let arrDictionary = arrArrDictionary[2] as! NSArray
            dest.ArrDic = arrDictionary
            
        }
        if(segue.identifier == "exp"){
            let dest = segue.destination as! ViewControllerPregunta
            let arrDictionary = arrArrDictionary[3] as! NSArray
            dest.ArrDic = arrDictionary
            
        }
        
    }

}
