//
//  RendaManagerV.swift
//  Renda_Arrenge
//
//  Created by 山尾かな on 2022/09/03.
//

import UIKit
import AVFoundation

class RendaManagerV {
    
    static let shared = RendaManagerV()
    
    var bgmAudioPlayer: AVAudioPlayer?
    var seAudioPlayer: AVAudioPlayer?
    
    // サウンドエフェクト
    func playSE(fileName: String) {
        
        // サウンドの初期化
        guard let soundFilePath = Bundle.main.path(forResource: fileName, ofType: "mp3") else {
            
            assert(false, "ファイル名が間違っているので、読み込めません")
        }
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            
            seAudioPlayer = try AVAudioPlayer(contentsOf: fileURL)
            seAudioPlayer?.prepareToPlay()
            seAudioPlayer?.play()
        } catch let error {
            
            assert(false, "サウンドの設定中にエラーが発生しました (\(error.localizedDescription))")
        }
    }
    
    func playBGM(fileName: String) {
        
        // サウンドの初期化
        guard let soundFilePath = Bundle.main.path(forResource: fileName, ofType: "mp3") else {
            
            assert(false, "ファイル名が間違っているので、読み込めません")
        }
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            
            bgmAudioPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmAudioPlayer?.prepareToPlay()
            bgmAudioPlayer?.play()
        } catch let error {
            
            assert(false, "サウンドの設定中にエラーが発生しました (\(error.localizedDescription))")
        }
    }
    
    func stopBGM() {
        
        // BGMが流れたままなら止められるように
        bgmAudioPlayer?.stop()
    }
    func damageAnimation(imageView: UIImageView) {
        
        let animation = CABasicAnimation(keyPath: "position")
        // 一回移動するのにかかる時間
        animation.duration = 0.02
        // 何回移動するか
        animation.repeatCount = 2
        // 一回移動したら自動で戻るようにする（これで揺れたように見える）
        animation.autoreverses = true
        // どこからどこまで移動するか
        animation.fromValue = NSValue(cgPoint: CGPoint(x: imageView.center.x - 5, y: imageView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: imageView.center.x + 5, y: imageView.center.y))
        // アニメーションを適用する
        imageView.layer.add(animation, forKey: "position")
    }
}
