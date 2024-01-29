//
//  ViewController5.swift
//  textToSpeech pr 1
//
//  Created by Neel  on 26/06/23.
//

import UIKit

class ViewController5: UIViewController {

    var time = Timer()
    
    @IBOutlet weak var pg: UIProgressView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pg.progress = 0.0
        progress()
        
    }
    
    func progress()
    {
        var a = pg.progress
        
        time = Timer.scheduledTimer(withTimeInterval: 0.06, repeats: true) { _ in
            a += 0.01
            self.pg.progress = a
            print(self.pg.progress)
            if self.pg.progress == 1.0
                
            {
                self.pg.progress = 0.0
                self.time.invalidate()
                bar()
                
            }
            
            func bar()
            {
                let b = self.storyboard?.instantiateViewController(identifier: "ViewController3")
                as! ViewController3; self.navigationController?.pushViewController(b, animated: true)
            }
        }
        
    }
    
}

