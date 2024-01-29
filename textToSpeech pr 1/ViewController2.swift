//
//  ViewController2.swift
//  textToSpeech pr 1
//
//  Created by Neel  on 23/06/23.
//

import UIKit
import AVFoundation
class ViewController2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    
    var arr = [UIImage(named: "9"),UIImage(named: "10"),
               UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18")]
    
    
    
    
    var a = 0
    var numbers =  ["1","2","3","4","5","6","7","8","9","10"]
    
    var speech =  ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    
    @IBOutlet weak var cview: UICollectionView!
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
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =  cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        as! CollectionViewCell1
        
        cell.label.text = numbers[indexPath.row]
        
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.img.image = arr[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 182, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        var myUtterance = AVSpeechUtterance(string:speech[indexPath.row])
        
        
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-in")
        
        myUtterance.rate = 0.40
        synth.speak(myUtterance)
    }
    
}

