//
//  LogoView.swift
//  Logo
//
//  Created by Gerardo Hernandez on 2/4/20.
//  Copyright © 2020 Gerardo Hernandez. All rights reserved.
//

import UIKit



@IBDesignable
class LogoView: UIView {

   // MARK: - View Lifecycle
   
    private let logoBgColor = UIColor.black
    private let borderColor = UIColor.white
    private let borderWitdh: CGFloat = 5.0
    private let tanget1End = CGPoint(x: -150.00, y: -300.00)
    private let tange21End = CGPoint(x: 150.00, y: 299.00)
    private let archRadius: CGFloat = (CGFloat( 400.00 / (2 * Double.pi)))
    
    
    
//
//   override init(frame: CGRect) {
//       super.init(frame: frame)
//       backgroundColor = UIColor.clear
//   }
//
//   required init?(coder aDecoder: NSCoder) {
//       super.init(coder: aDecoder)
//       backgroundColor = UIColor.clear
//   }
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            //logo shpae
            context.addEllipse(in: rect)
            context.addQuadCurve(to: <#T##CGPoint#>, control: <#T##CGPoint#>)
            context.setFillColor(logoBgColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWitdh / 2.0, y: rect.origin.y + borderWitdh / 2.0, width: rect.size.width, height: rect.size.height - borderWitdh))
            context.setStrokeColor(borderColor.cgColor)
            context.setStrokeColor(borderColor.cgColor)
            context.strokePath()
        }
    }


}
