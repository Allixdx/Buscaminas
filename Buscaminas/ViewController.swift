//
//  ViewController.swift
//  Buscaminas
//
//  Created by MacBook Pro on 25/07/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var btnMusic: UIButton!
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(forResource: "menuMusic", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                print("Reproduciendo...")
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print("Couldn't load the file: \(error)")
            }
        } else {
            print("Sound file does not exist in main bundle")
        }
    }
    

    @IBAction func btnMusicTapped(_ sender: UIButton) {
        if let player = audioPlayer {
                if player.isPlaying {
                    player.pause()
                    btnMusic.setImage(UIImage(named: "audio_off_btn"), for: .normal)
                } else {
                    player.play()
                    btnMusic.setImage(UIImage(named: "audio_on_btn"), for: .normal)
                }
            }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let player = audioPlayer, player.isPlaying {
            player.stop()
        }
    }
}




