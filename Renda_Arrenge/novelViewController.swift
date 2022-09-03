//
//  novelViewController.swift
//  Renda_Arrenge
//
//  Created by 山尾かな on 2022/09/03.
//

import UIKit

class novelViewController: UIViewController {

    let rendamanager = RendaManagerV.shared
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var charaimage: UIImageView!
    var tapCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Button(_ sender: UIButton) {
        rendamanager.playSE(fileName: "panch")
        tapCount += 1
        if tapCount == 1{
            charaimage.image = UIImage(named: "tekiase")
            nameLabel.text = "敵"
            Label.text = "はあ、はあ、はあ......."
        }else if tapCount == 2{
            charaimage.image = UIImage(named: "syujinkouase")
            nameLabel.text = "主人公"
            Label.text = "はあ......、しぶとい奴め......"
        }else if tapCount == 3{
            nameLabel.text = "敵"
            charaimage.image = UIImage(named: "tekiase_emi")
            Label.text = "ふう...アンタこそ......"
        }else if tapCount == 4{
            charaimage.image = UIImage(named: "syujinkouase")
            nameLabel.text = "主人公"
            Label.text = "どっちが八島組総長の座に就くか"
        }else if tapCount == 5{
            charaimage.image = UIImage(named: "syujinkouase_emi")
            nameLabel.text = "主人公"
            Label.text = "次の拳で、決まるみたいだな..."
        }else if tapCount == 6{
            charaimage.image = UIImage(named: "tekiase_emi")
            nameLabel.text = "敵"
            Label.text = "ああ、そうみたいだね......"
        }else if tapCount == 7{
            charaimage.image = UIImage(named: "syujinkouase")
            nameLabel.text = "主人公"
            Label.text = "とにかく殴って殴って、"
        }else if tapCount == 8{
            charaimage.image = UIImage(named: "syujinkouemi")
            nameLabel.text = "主人公"
            Label.text = "アタシが最強だって、証明してやる！"
        }else if tapCount == 9{
            charaimage.image = UIImage(named: "tekiemi")
            nameLabel.text = "敵"
            Label.text = "望むところさ！その生意気なツラ、潰してやるよ！"
        }else if tapCount == 10{
            charaimage.image = UIImage(named: "hutari")
            nameLabel.text = "主人公・敵"
            Label.text = "うおおおおおおおお！！！！！"
        }else if tapCount == 11{
            performSegue(withIdentifier: "novelTomain", sender: nil)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        rendamanager.playBGM(fileName: "duel")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        rendamanager.stopBGM()
    }
}
