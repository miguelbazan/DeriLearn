//
//  ViewControllerCatAprende.swift
//  DeriLearn
//
//  Created by alumno on 3/28/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerCatAprende: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "poli" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso", "6to Paso", "7mo Paso", "8vo Paso", "9no Paso", "10mo Paso", "11vo Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "Poli1"), #imageLiteral(resourceName: "Poli2"), #imageLiteral(resourceName: "Poli3"), #imageLiteral(resourceName: "Poli4"), #imageLiteral(resourceName: "Poli5"), #imageLiteral(resourceName: "Poli6"), #imageLiteral(resourceName: "Poli7"), #imageLiteral(resourceName: "Poli8"), #imageLiteral(resourceName: "Poli9"), #imageLiteral(resourceName: "Poli10"),#imageLiteral(resourceName: "Poli11")]
            let listaDesc : [String] = ["Tenemos la función original que queremos derivar.", "Para tener un orden empezaremos con el primer termino. Lo que se tiene que hacer en esta situación es agarrar el exponente de la variable X,que en este caso es 3, y lo multiplicamos por su coeficiente que también es 3.", "Ahora, restamos 1 al exponente de la variable X lo que lo hace igual a 2. Y continuamos con el siguiente termino.", "Esto parece complicado, pero siempre resulta más fácil voltear la variable X de la división hacia arriba para que multiplique al numero 2, simplemente tenemos que cambiar el signo de su exponente.", "Ahora que tenemos la variable junto al coeficiente, el manejo de esto resulta mucho más fácil, y repetimos lo que ya hemos hecho con el termino anterior. Bajamos el -2 para multiplicar al coeficiente de la X.", "Ahora, restamos 1 al exponente de la X, y nos da -3. ", "Volvemos a poner la expresión en el orden que estaba originalmente. y avanzamos a la siguiente sección.", "Cuando una variable no tiene un exponente este es siempre igual a 1. Volvemos a hacer lo mismo que hicimos anteriormente y verán que al final, cuando llegamos a la parte de restar 1 al exponente que también es 1, este será igual a 0 y para que nuestra variable sea irrelevante, por lo que la podremos quitar por completo.", "Como estamos siguiendo un orden, no sumemos estos dos términos, por que son diferentes. Avancemos al ultimo termino.", "Como este es igual a una constante, podemos simplemente eliminarla.", "Terminamos con nuestra derivación."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "poli21"), #imageLiteral(resourceName: "poli22"), #imageLiteral(resourceName: "poli23"), #imageLiteral(resourceName: "poli24"), #imageLiteral(resourceName: "poli25")]
            let listaDesc2 : [String] = ["Tenemos nuestra función original.","Para manejar fácilmente la derivación, nos enfocaremos en cada termino individualmente. Para derivar este primer termino, agarramos el exponente de la variable X que es 4 y lo multiplicamos por su coeficiente que también es 4. Después le restamos 1 al exponente.","Ahora nos enfocamos en el segundo termino, y hacemos lo mismo que en el caso pasado. Bajamos el exponente de X y se lo multiplicamos a coeficiente de la variable X. Después, de restamos 1 al exponente de X.","DAvanzamos al siguiente termino. Cuando vemos que falta el exponente de una variable es por que es igual a 1. Ahora volvemos a hacer los pasos anteriores y veremos que el exponente se reduce a 0, cuando ocurre esto podemos eliminar X.","Terminamos nuestra derivación polinomio."]
            
            let dest = segue.destination as! ViewController
            dest.listaPasos = listaPasos
            dest.listaDesc = listaDesc
            dest.listaFunciones = listaFunciones
            dest.listaPasos2 = listaPasos2
            dest.listaDesc2 = listaDesc2
            dest.listaFunciones2 = listaFunciones2
            
        } else if segue.identifier == "trigo" {
            
        } else if segue.identifier == "log" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "log1"), #imageLiteral(resourceName: "log2"), #imageLiteral(resourceName: "log3"), #imageLiteral(resourceName: "log4"),#imageLiteral(resourceName: "log6")]
            let listaDesc : [String] = ["Tenemos nuestra función original", "Lo que nos importa es el interior del log. Derivamos esto y lo dividimos por el original. El log lo eliminamos por completo unos quedamos con la división.", "Ahora simplemente resolvemos la división de variables.", "La variable x superior la eliminamos y restamos 1 al exponente de la variable divisora.", "Terminamos nuestra derivación logarítmica."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso", "5to Paso","6to Paso", "7mo Paso", "8vo Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "log21"), #imageLiteral(resourceName: "log22"), #imageLiteral(resourceName: "log23"), #imageLiteral(resourceName: "log24"),#imageLiteral(resourceName: "log25"), #imageLiteral(resourceName: "log26"),#imageLiteral(resourceName: "log27"), #imageLiteral(resourceName: "log28")]
            let listaDesc2 : [String] = ["Tenemos nuestra función original.", "Nos enfocaremos primero en lo que esta dentro de los paréntesis y obtendremos la derivada de esto.", "Una vez que tenemos este resultado podemos multiplicarlo por lo que esta afuera del log.", "Resolvemos la multiplicación.", "El log lo eliminamos y movemos lo que estaba en su interior abajo, dividiendo el nuevo numero.", "Resolvemos la division de variables.", "La variable x termina siendo negativa por lo que podemos pasarla dividiendo al 6.", "Terminamos la derivación logarítmica."]
            
            let dest = segue.destination as! ViewController
            dest.listaPasos = listaPasos
            dest.listaDesc = listaDesc
            dest.listaFunciones = listaFunciones
            dest.listaPasos2 = listaPasos2
            dest.listaDesc2 = listaDesc2
            dest.listaFunciones2 = listaFunciones2
            
        } else if segue.identifier == "exp" {
            let listaPasos : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso"]
            let listaFunciones : [UIImage] = [#imageLiteral(resourceName: "exp1"), #imageLiteral(resourceName: "exp2"), #imageLiteral(resourceName: "exp3"), #imageLiteral(resourceName: "exp4")]
            let listaDesc : [String] = ["Tenemos nuestra función original, y como es una exponencial, realmente lo único que nos interesa es el exponente de la e.", "Esto es lo único que nos interesa derivar, lo cual, en este caso, lo hacemos como polinomio.", "El resultado del anterior lo multiplicamos a la constante e.", "Terminamos la derivación exponencial."]
            let listaPasos2 : [String] = ["1er Paso", "2do Paso", "3er Paso", "4to Paso"]
            let listaFunciones2 : [UIImage] = [#imageLiteral(resourceName: "exp21"), #imageLiteral(resourceName: "exp22"), #imageLiteral(resourceName: "esp23"), #imageLiteral(resourceName: "exp24")]
            let listaDesc2 : [String] = ["Tenemos nuestra función original, y como es una exponencial, realmente lo único que nos interesa es el exponente de la e.", "Esto es lo único que nos interesa derivar, lo cual, en este caso, lo hacemos como polinomio.", "El resultado del anterior lo multiplicamos a la constante e.", "Terminamos la derivación exponencial."]
            
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
