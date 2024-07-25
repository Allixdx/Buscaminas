//
//  SplashViewController.swift
//  Buscaminas
//
//  Created by MacBook Pro on 25/07/24.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var imvSplash: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool){
        let w = (view.frame.width * 0.8)
        let x = (view.frame.width - w) / 2.0
        imvSplash.frame = CGRect(x: x, y: view.frame.height, width: w, height: w)
        
        UIView.animate(withDuration: 1.5, delay: 0.5, options: .transitionFlipFromBottom){
            self.imvSplash.frame.origin.y = (self.view.frame.height - w) / 2.0
        } completion: { answer in
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false){Timer in self.performSegue(withIdentifier: "sgSplash", sender: nil)}
        }
    }
}
