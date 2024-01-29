//
//  ViewController4.swift
//  textToSpeech pr 1
//
//  Created by Neel  on 26/06/23.
//

import UIKit

class ViewController4: UIViewController {
    var time = Timer()
    
    @IBOutlet weak var pgbar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pgbar.progress = 0.0
        progress()
        
    }
    
    func progress()
    {
        var a = pgbar.progress
        
        time = Timer.scheduledTimer(withTimeInterval: 0.06, repeats: true) { _ in
            a += 0.01
            self.pgbar.progress = a
            print(self.pgbar.progress)
            if self.pgbar.progress == 1.0
                
            {
                self.pgbar.progress = 0.0
                self.time.invalidate()
                bar()
                
            }
            
            func bar()
            {
                let b = self.storyboard?.instantiateViewController(identifier: "ViewController2")
                as! ViewController2; self.navigationController?.pushViewController(b, animated: true)
            }
        }
        
    }
    
}
