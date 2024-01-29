//
//  ViewController1.swift
//  textToSpeech pr 1
//
//  Created by Neel  on 23/06/23.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var buttonabc: UIButton!
    @IBOutlet weak var button123: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func actionabc(_ sender: Any) {
        navigate()
    }
    
    func navigate()
    {
        let b = storyboard?.instantiateViewController(identifier: "ViewController3")
        as! ViewController3
        navigationController?.pushViewController(b, animated: true)
    }
    
  
    
    
    @IBAction func button123action(_ sender: Any) {
        navigation()
    }
    
    func navigation()
    {
        let a = storyboard?.instantiateViewController(identifier: "ViewController2")
        as! ViewController2
        navigationController?.pushViewController(a, animated: true)
    }
    
    
    
  

}
