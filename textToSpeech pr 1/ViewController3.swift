//
//  ViewController3.swift
//  textToSpeech pr 1
//
//  Created by Neel  on 24/06/23.
//

import UIKit
import AVFoundation

class ViewController3: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cview: UICollectionView!
    
    var alphabets =
    ["A","B","C","D","E","F","G",
     "H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var speech = ["A For Apple","B For Ball","C for cat","D for dog","E for elephant","F for fish","G for gun","H for horse","I for icecream","J for joker","K for kite" ,"L for lion","M for monkey","N for nest","O for owl","P for parrot  ","Q for queen","R for rabbit","S for snake","T for train","U for umbrella","V for van","W for watch","X for xmas","Y for yacht","Z for zebra "]

    
    var imagearr = [UIImage(named: "20"),UIImage(named: "21"),UIImage(named: "22"),
               UIImage(named: "23"),UIImage(named: "24"),UIImage(named: "25"),UIImage(named: "26"),UIImage(named: "27"),UIImage(named: "28"),UIImage(named: "29"),UIImage(named: "30"),UIImage(named: "31"),UIImage(named: "32"),UIImage(named: "33"),UIImage(named: "34"),UIImage(named: "35"),UIImage(named: "36"),UIImage(named: "37"),UIImage(named: "38"),UIImage(named: "39"),UIImage(named: "40"),UIImage(named: "41"),UIImage(named: "42"),UIImage(named: "43"),UIImage(named: "44"),UIImage(named: "45")]
    
    let synth = AVSpeechSynthesizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    }

    @IBAction func `return`(_ sender: Any) {
        navigation()
    }
    
    func navigation()
    {
        let a  = storyboard?.instantiateViewController(identifier: "ViewController1")
        as!ViewController1
        navigationController?.popToRootViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        as! CollectionViewCell2
        
        cell.label2.text = alphabets[indexPath.row]
        
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.img2.image = imagearr[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 182, height: 200)
    }
    func collectionView(_ collectifonView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        var myUtterance = AVSpeechUtterance(string:speech[indexPath.row])
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-in")
        myUtterance.rate = 0.40
        synth.speak(myUtterance)
        
        
    }
}

