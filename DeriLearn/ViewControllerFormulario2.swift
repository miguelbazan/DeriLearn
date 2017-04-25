//
//  ViewControllerFormulario2.swift
//  DeriLearn
//
//  Created by Luis Salomon Flores Ugalde on 4/25/17.
//  Copyright © 2017 alumno. All rights reserved.
//
import UIKit

class ViewControllerFormulario: UIViewController,UIScrollViewDelegate {
    
    
    @IBOutlet weak var scView: UIScrollView!
    var imagen = UIImage(named: "formulario")
    var imageView = UIImageView(image: #imageLiteral(resourceName: "formulario"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = resizeImage(image: imagen!)
       imageView = UIImageView(image: image)
        scView.delegate = self
        scView.addSubview(imageView)
        scView.contentSize = (image.size)
        scView.setContentOffset(CGPoint(x: 500, y: 300), animated: true)
        scView.minimumZoomScale = 1
        scView.maximumZoomScale = 5.0
        scView.showsVerticalScrollIndicator = true
        scView.alwaysBounceVertical = false
        scView.alwaysBounceHorizontal = false
    
        imageView.clipsToBounds = false
        imageView.layer.cornerRadius = 11.0
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func resizeImage(image: UIImage) -> UIImage {
        let size = image.size
        
        let widthRatio  = self.view.frame.width*2  / image.size.width
        let heightRatio = self.view.frame.height*2 / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
