
import UIKit

class ViewController: UIViewController {
    var tipo : String!
    @IBOutlet weak var lblPasos: UILabel!
    
    @IBOutlet weak var imgFotos: UIImageView!
    
    @IBOutlet weak var txtDescripcion: UITextView!
    
    @IBOutlet weak var btnAnterior: UIButton!
    
    @IBOutlet weak var btnSiguiente: UIButton!
    
    @IBOutlet weak var btnEjemplo: UIBarButtonItem!
    var iCont : Int!
    var listaPasos : [String]!
    var listaPasos2 : [String]!
    var listaFunciones : [UIImage]!
    var listaFunciones2 : [UIImage]!
    var listaDesc : [String]!
    var listaDesc2 : [String]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        iCont=0
        btnAnterior.isEnabled = false
        lblPasos.text =  listaPasos[iCont]
        txtDescripcion.text = listaDesc[iCont]
    
        imgFotos.image = listaFunciones[iCont]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK:- Metodos de acción
    
    @IBAction func Anterior(_ sender: UIButton) {
        if iCont > 0 {
            btnSiguiente.isEnabled = true
            iCont = iCont-1
            if iCont == 0 {
                btnAnterior.isEnabled = false
                lblPasos.text = listaPasos[iCont]
                imgFotos.image = listaFunciones[iCont]
                txtDescripcion.text = listaDesc[iCont]
            } else {
                lblPasos.text = listaPasos[iCont]
                imgFotos.image = listaFunciones[iCont]
                txtDescripcion.text = listaDesc[iCont]
            }
        } else {
            btnAnterior.isEnabled = false
        }

        
    }
    
    @IBAction func Siguiente(_ sender: UIButton) {
        
        if iCont < listaPasos.count {
            btnAnterior.isEnabled = true
            iCont = iCont+1
            if iCont == listaPasos.count-1 {
                btnSiguiente.isEnabled = false
                lblPasos.text = listaPasos[iCont]
                imgFotos.image = listaFunciones[iCont]
                txtDescripcion.text = listaDesc[iCont]
                
            } else {
                lblPasos.text = listaPasos[iCont]
                imgFotos.image = listaFunciones[iCont]
                txtDescripcion.text = listaDesc[iCont]
            }
        }

    }
    
    @IBAction func cambiarEjemplo(_ sender: UIBarButtonItem) {
        iCont = 0
        btnAnterior.isEnabled = false
        btnSiguiente.isEnabled = true
        var aux : [String]!
        let aux2 : [UIImage]!
        aux = listaPasos
        listaPasos = listaPasos2
        listaPasos2 = aux
        aux = listaDesc
        listaDesc = listaDesc2
        listaDesc2 = aux
        aux2 = listaFunciones
        listaFunciones = listaFunciones2
        listaFunciones2 = aux2
        lblPasos.text =  listaPasos[iCont]
        txtDescripcion.text = listaDesc[iCont]
        imgFotos.image = listaFunciones[iCont]
        if btnEjemplo.title == "Otro Ejemplo" {
            btnEjemplo.title = "Ejemplo Anterior"
        } else if btnEjemplo.title == "Ejemplo Anterior"{
            btnEjemplo.title  = "Otro Ejemplo"
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
        
    }
    
    override var shouldAutorotate: Bool {
        
        return false
        
    }

    


}

