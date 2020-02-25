//
//  ViewController.swift
//  A Whole New World
//
//  Created by Chang Sophia on 2/25/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    @IBOutlet weak var pauseButton: UIButton!
     
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var lyricsLabel: UILabel!
   
    
    
    let player = AVPlayer()
    //在class ViewController 裡宣告AVPlayer 型別的property player 生成播放音樂的AVPlayer物件

   
    
    
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
         
        player.pause()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let fileUrl = Bundle.main.url(forResource:"piano", withExtension: "mp3")!
        //利用 Bundle.man 取得 App 主要的 Bundle，也就是 App 本身的資料夾。放在 Project navigator 下的 music.mp4 將在 App 的資料夾下，透過呼叫 function url(forResource:withExtension:) 可取得它在資料夾裡的 URL，參數 forResource 傳入檔名，參數 withExtension 傳入附檔名
        //function url 回傳的 URL 將是 optional ，因此我們加上 ! 取值
        let playerItem = AVPlayerItem(url: fileUrl)
        //利用 AVPlayerItem 生成 player 要播放的音樂
        player.replaceCurrentItem(with: playerItem)
        //設定 player 要播放的 AVPlayerItem
        player.play()
        //執行
        
        
    }
 
}
 
