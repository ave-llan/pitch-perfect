//
//  PlaySoundsViewController.swift
//  pitch-perfect
//
//  Created by John Leszczynski on 3/1/16.
//  Copyright © 2016 John Leszczynski. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            let filePathUrl = NSURL.fileURLWithPath(filePath)
//        } else {
//            print("the filePath is empty")
//        }
        
        audioPlayer = try!
            AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(speed: Float) {
        audioPlayer.stop()
        audioPlayer.rate = speed
        audioPlayer.play()
    }
    
    @IBAction func playSnail(sender: UIButton) {
        playAudio(0.5)
    }

    @IBAction func playRabbit(sender: UIButton) {
        playAudio(2.0)
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0 // set back to beginning
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
