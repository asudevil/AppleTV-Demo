//
//  MovieDetailsViewController.swift
//  AppleTV Demo
//
//  Created by admin on 10/11/15.
//  Copyright © 2015 CodeWithFelix. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var ratings: UILabel!
    
    var loadedTitle = ""
    var loadedImage = UIImage()
    var loadedDescription = ""
    var loadedReleaseDate = ""
    var loadedRatings = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = loadedTitle
        movieImage.image = loadedImage
        movieDescription.text = loadedDescription
        releaseDate.text = loadedReleaseDate
        ratings.text = loadedRatings
        
    }
    
    
    //USE movie id in the string below instead of 206647
    
     var videoUrl = "http://api.themoviedb.org/3/movie/206647/videos?api_key=ff743742b3b6c89feb59dfc138b4c12f"
    
    
    
    @IBAction func playButton(sender: AnyObject) {
        
        performSegueWithIdentifier("playVideo", sender: self)
        
    }
/*
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
*/

}
