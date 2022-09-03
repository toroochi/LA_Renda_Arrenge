//
//  ViewController.swift
//  Renda_Arrenge
//
//  Created by 山尾かな on 2022/09/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var renddaCountText: UILabel!
    @IBOutlet var countButton: UIButton!
    @IBOutlet var timeText: UILabel!
    @IBOutlet var syujinkouImg: UIImageView!
    @IBOutlet var tekiImg: UIImageView!
    let rendamanager = RendaManagerV.shared
    var rendacount = 0
    var timecount: Float = 15
    var timer: Timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if !timer.isValid{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
        }
    }
    @IBAction func buttonRendaCount(){
        rendamanager.playSE(fileName: "naguru")
        rendacount += 1
        renddaCountText.text = "\(rendacount)"
        rendamanager.damageAnimation(imageView: syujinkouImg)
        rendamanager.damageAnimation(imageView: tekiImg)
    }
    @objc func up(){
        timecount -= 1
        timeText.text = "\(timecount)"
        if timecount == 0.0{
            mainToscoere()
        }
    }
    func mainToscoere(){
        performSegue(withIdentifier: "mainToscore", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainToscore"{
            let scoreViewController = segue.destination as! ScoreViewController
            scoreViewController.correctRenda = self.rendacount
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        rendamanager.playBGM(fileName: "MusMus-BGM-122")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        rendamanager.stopBGM()
    }
}


