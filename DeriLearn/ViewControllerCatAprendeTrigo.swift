//
//  ViewControllerCatAprendeTrigo.swift
//  DeriLearn
//
//  Created by alumno on 3/29/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerCatAprendeTrigo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sen" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "Sin1"), #imageLiteral(resourceName: "Sin2"), #imageLiteral(resourceName: "Sin3"), #imageLiteral(resourceName: "Sin4")]
            let listaDesc : [String] = ["Tenemos nuestra función original, y lo único que nos importa realmente es lo que esta dentro de los paréntesis.", "Se deriva el ángulo, que es lo que esta dentro del paréntesis.", "En este caso el resultado es 6. Esto lo multiplicaremos a la nueva función.", "Por regla, después de la derivación, se cambia Seno por Coseno."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "sin21"), #imageLiteral(resourceName: "sin22"), #imageLiteral(resourceName: "sin23"), #imageLiteral(resourceName: "sin24"), #imageLiteral(resourceName: "sin25")]
            let listaDesc2 : [String] = ["Desc Paso 1", "Desc Paso 2", "Desc Paso 3", "Desc Paso 4","Desc Paso 5"]
            
            let dest = segue.destination as! ViewController
            dest.listaPasos = listaPasos
            dest.listaDesc = listaDesc
            dest.listaFunciones = listaFunciones
            dest.listaPasos2 = listaPasos2
            dest.listaDesc2 = listaDesc2
            dest.listaFunciones2 = listaFunciones2
            
        } else if segue.identifier == "cos" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "Cos1"), #imageLiteral(resourceName: "Cos2"), #imageLiteral(resourceName: "Cos3"), #imageLiteral(resourceName: "Cos4")]
            let listaDesc : [String] = ["Tenemos nuestra función original, y lo único que nos importa realmente es lo que esta dentro de los paréntesis.", "Se deriva el ángulo, que es lo que esta dentro del paréntesis.", "En este caso el resultado es 4. Esto lo multiplicaremos a la nueva función.", "Por regla, después de la derivación, se cambia Coseno por -Seno."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "cos21"), #imageLiteral(resourceName: "cos22"), #imageLiteral(resourceName: "cos23"), #imageLiteral(resourceName: "cos24"), #imageLiteral(resourceName: "cos25")]
            let listaDesc2 : [String] = ["Desc Paso 1", "Desc Paso 2", "Desc Paso 3", "Desc Paso 4","Desc Paso 5"]
            
            let dest = segue.destination as! ViewController
            dest.listaPasos = listaPasos
            dest.listaDesc = listaDesc
            dest.listaFunciones = listaFunciones
            dest.listaPasos2 = listaPasos2
            dest.listaDesc2 = listaDesc2
            dest.listaFunciones2 = listaFunciones2
            
        } else if segue.identifier == "tan" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "tan1"), #imageLiteral(resourceName: "tan2"), #imageLiteral(resourceName: "tan3"), #imageLiteral(resourceName: "tan4")]
            let listaDesc : [String] = [" Tenemos nuestra función original, y lo único que nos importa realmente es lo que esta dentro de los paréntesis.", "Se deriva el ángulo, que es lo que esta dentro del paréntesis.", "En este caso el resultado es 2, esto lo multiplicaremos a la nueva función.", "Por regla, después de la derivación, se cambia Tan por Secante al cuadrado."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "tan21"), #imageLiteral(resourceName: "tan22"), #imageLiteral(resourceName: "tan23"), #imageLiteral(resourceName: "tan24"), #imageLiteral(resourceName: "tan25")]
            let listaDesc2 : [String] = ["Desc Paso 1", "Desc Paso 2", "Desc Paso 3", "Desc Paso 4","Desc Paso 5"]
            
            let dest = segue.destination as! ViewController
            dest.listaPasos = listaPasos
            dest.listaDesc = listaDesc
            dest.listaFunciones = listaFunciones
            dest.listaPasos2 = listaPasos2
            dest.listaDesc2 = listaDesc2
            dest.listaFunciones2 = listaFunciones2
        }
    }
 

}
