//
//  ScoreViewController.swift
//  Renda_Arrenge
//
//  Created by 山尾かな on 2022/09/01.
//

import UIKit

class ScoreViewController: UIViewController {

    var correctRenda: Int = 0
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var comentlabel: UILabel!
    @IBOutlet var image:UIImageView!
    let rendamanager = RendaManagerV.shared
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "\(correctRenda)"
        if correctRenda == 0 {
            image.image = UIImage(named: "make")
            comentlabel.text = "アンタ、ヤル気あんの？"
        }else if correctRenda <= 30{
            image.image = UIImage(named: "make")
            comentlabel.text = "総長はアタイで決まりだな"
        }else if correctRenda <= 60{
            image.image = UIImage(named: "hikiwake")
            comentlabel.text = "ふっ...やっぱりやるな、アンタ"
        }else if correctRenda <= 80{
            image.image = UIImage(named: "kathi")
            comentlabel.text = "くそっ...アタシの負けだよ..."
        }else{
            image.image = UIImage(named: "kathi")
            comentlabel.text = "文句はねえ...アンタが最強の総長だ！"
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        rendamanager.playBGM(fileName: "guiter")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        rendamanager.stopBGM()
    }
}
