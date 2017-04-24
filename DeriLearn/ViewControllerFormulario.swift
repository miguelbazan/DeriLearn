//
//  ViewControllerFormulario.swift
//  DeriLearn
//
//  Created by Miguel Bazán on 3/30/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewControllerFormulario: UIViewController,UIScrollViewDelegate {
    
    
    @IBOutlet weak var scView: UIScrollView!
    let imagen = UIImage(named: "formulario")
    let imageView = UIImageView(image: #imageLiteral(resourceName: "formulario"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scView.addSubview(imageView)
        scView.contentSize = (imagen?.size)!
        scView.setContentOffset(CGPoint(x: 500, y: 300), animated: true)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
