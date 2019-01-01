//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by ADT on 1/1/19.
//  Copyright © 2019 ADT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivBall: UIImageView!
    @IBOutlet var mainVC: UIView!
    
    let arrBallNames : Array = ["ball1","ball2","ball4","ball4","ball5"]
    var iRandomNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadRandomImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAsk_Click(_ sender: Any) {
        loadRandomImage()
    }
    
    func loadRandomImage (){

        iRandomNumber = Int.random(in: 0...4)
        ivBall.image = UIImage(named: arrBallNames[iRandomNumber])
        print(arrBallNames[iRandomNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        

        loadRandomImage()
    }
}

