//
//  startViewController.swift
//  Renda_Arrenge
//
//  Created by 山尾かな on 2022/09/01.
//

import UIKit


class startViewController: UIViewController {
    
    let rendamanager = RendaManagerV.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        rendamanager.playBGM(fileName: "nc263171")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        rendamanager.stopBGM()
    }
}
