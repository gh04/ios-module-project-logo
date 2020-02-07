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

   
   // MARK - Properties
    

 
     let phoenixColor: UIColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
   

    // MARK: - View Lifecycle

   override init(frame: CGRect) {
       super.init(frame: frame)
       backgroundColor = UIColor.clear
   }

   required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       backgroundColor = UIColor.clear
   }

   

    override func draw(_ rect: CGRect) {

        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(phoenixColor.cgColor)
            //logo shpae
            context.addEllipse(in: CGRect(x: 50, y: 50, width: 150, height: 150))
            context.strokePath()
            
            context.addEllipse(in: <#T##CGRect#>)
            
//          let roundedRectPath = CGPath(roundedRect: CGRect(origin: logoOrigin,
//                                                                    size: CGSize(width: logoWidth, height: upperRectHeight)),
//                                                cornerWidth: cornerRadius,
//                                                cornerHeight: cornerRadius,
//                                                transform: nil)
//                       context.addPath(roundedRectPath)
//                       context.fillPath()



        }
    }


}

//// MARK: - Logo Layout Properties
//
//extension LogoView {
//    private struct SizeRatio {
//        static let logoHeightToLogoWidth: CGFloat = 2
//        static let upperRectHeightToLogoHeight: CGFloat = 0.85
//        static let cornerRadiusToLogoWidth: CGFloat = 1
//
//    }
//
//    // Corner Radius
//    private var cornerRadius: CGFloat {
//        return logoWidth * SizeRatio.cornerRadiusToLogoWidth
//    }
//
//    // Logo Width, Height and Origin
//    private var logoWidth: CGFloat {
//        if bounds.size.height >= bounds.size.width * SizeRatio.logoHeightToLogoWidth {
//            return bounds.size.width
//        } else {
//            return bounds.size.height / SizeRatio.logoHeightToLogoWidth
//        }
//    }
//    private var logoHeight: CGFloat {
//        return logoWidth * SizeRatio.logoHeightToLogoWidth
//    }
//    private var logoOrigin: CGPoint {
//        return CGPoint(x: (bounds.size.width - logoWidth) / 2, y: (bounds.size.height - logoHeight) / 3)
//    }
//
//    // Upper Rectangle (top section of shield)
//    private var upperRectHeight: CGFloat {
//        return logoHeight * SizeRatio.upperRectHeightToLogoHeight
//    }
//
//    // Lower Triangle (bottom section of shield)
//    private var lowerTriangleHeight: CGFloat {
//        return logoHeight - upperRectHeight
//    }
//    private var lowerLeftPoint: CGPoint {
//        return CGPoint(x: logoOrigin.x, y: logoOrigin.y + upperRectHeight)
//    }
//    private var lowerRightPoint: CGPoint {
//        return CGPoint(x: logoOrigin.x + logoWidth, y: logoOrigin.y + upperRectHeight)
//    }
//    private var lowerMiddlePoint: CGPoint {
//        return CGPoint(x: logoOrigin.x + (logoWidth / 2.0), y: logoOrigin.y + logoHeight)
//    }
//
//
//    
//
//}
//
