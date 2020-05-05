//
//  cardView.swift
//  Byrd
//
//  Created by Fernando de Lucas on 04/05/20.
//  Copyright © 2020 Dorime. All rights reserved.
//

import Foundation
import UIKit

class CardView: UIView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touches Began da CardView!")
    }
    
    let blankCircle : CAShapeLayer = {
        let layer =  CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: .zero, radius: 63, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        let shadowBounds =  UIBezierPath(arcCenter: CGPoint(x: circularPath.currentPoint.x-59, y: circularPath.currentPoint.y+3), radius: 63, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        layer.fillColor = UIColor.white.cgColor
        layer.path = circularPath.cgPath
        layer.lineCap = .round
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowPath = UIBezierPath(ovalIn: shadowBounds.bounds).cgPath
        layer.shadowRadius = 6
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        return layer
    }()

    //criando barra de progresso
    
    let progressCircle : CAShapeLayer = {
           let layer =  CAShapeLayer()
           let circularPath = UIBezierPath(arcCenter: .zero, radius: 55, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
           layer.fillColor = UIColor.green.cgColor
           layer.path = circularPath.cgPath
            layer.lineCap = .round
        layer.strokeEnd = 0
        layer.transform = CATransform3DMakeRotation(-CGFloat.pi / 2, 0, 0, 1)
           return layer
}()
    let blank: UILabel = {
        let label = UILabel()
        label.isUserInteractionEnabled = true
        return label
    }()

    let title : UILabel = {
         let label = UILabel()
        label.font = sfRounded(size: 11)
        label.textAlignment = .center
        label.textColor = UIColor.black
        return label
    }()
    
    let describe : UILabel = {
         let label = UILabel()
                label.font = sfRounded(size: 9)
                label.textAlignment = .center
                label.textColor = UIColor.greyDesc
            
        return label
    }()
    
    let imageView : UIImageView = {
        let image : UIImage = #imageLiteral(resourceName: "Group 89")
        return UIImageView(image: image)
    }()
    
    let animatedCircle : CABasicAnimation = {
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        var layer = CAShapeLayer()
        basicAnimation.toValue = 0.6
        basicAnimation.duration = 1
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        return basicAnimation
}()
   
    
    let recognizer : UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(
            target: self, action: #selector(toprint))
        return recognizer
    }()
    
    @objc func toprint() {
        print("ola")
    }
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          setupView()
      }
      
      required init?(coder: NSCoder) {
          super.init(coder: coder)
          setupView()
      }
    
    
    func setupView (){
        self.layer.addSublayer(blankCircle)
        self.layer.addSublayer(progressCircle)
        self.addSubview(title)
        self.addSubview(describe)
        self.addSubview(imageView)
        self.addSubview(blank)
        
    }
}
