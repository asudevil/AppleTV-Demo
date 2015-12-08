//
//  VideoPlayer.swift
//  AppleTV Demo
//
//  Created by admin on 11/15/15.
//  Copyright © 2015 CodeWithFelix. All rights reserved.
//

import UIKit
import Foundation
import AVKit

class VideoPlayer: AVPlayerViewController {
    
    //let overlayView = UIView(frame: CGRectMake(50, 50, 200, 200))

    override func viewDidLoad() {
        super.viewDidLoad()

        var player = AVPlayer(URL: NSURL(string: "http://trailers.apple.com/movies/focus_features/9/9-clip_480p.mov")!)
        
        var mediaItem = AVPlayerItem (URL: NSURL(string: "http://trailers.apple.com/movies/focus_features/9/9-clip_480p.mov")!)
        
        
        let titleMetadataItem = AVMutableMetadataItem()
        titleMetadataItem.locale = NSLocale.currentLocale()
        titleMetadataItem.key = AVMetadataCommonKeyTitle
        titleMetadataItem.keySpace = AVMetadataKeySpaceCommon
        titleMetadataItem.value = "The Spicy Suya!!!!"
        
        let descriptionMetadataItem = AVMutableMetadataItem()
        descriptionMetadataItem.locale = NSLocale.currentLocale()
        descriptionMetadataItem.key = AVMetadataCommonKeyDescription
        descriptionMetadataItem.keySpace = AVMetadataKeySpaceCommon
        descriptionMetadataItem.value = "This is the description for Spicy Suya!!!!"
        
        mediaItem.externalMetadata.append(titleMetadataItem)
        mediaItem.externalMetadata.append(descriptionMetadataItem)
        
        if let addMetadata = player.currentItem {
            
            print("Adding metadata infor!!!!!!!!")
            
            addMetadata.externalMetadata.append(titleMetadataItem)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
