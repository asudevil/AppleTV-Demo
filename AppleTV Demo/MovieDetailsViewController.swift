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
    
    
    
    @IBOutlet weak var headLine: UILabel!
    
    var loadedTitle = ""
    var loadedImage = UIImage()
    var loadedDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = loadedTitle
        movieImage.image = loadedImage
        movieDescription.text = loadedDescription
        
    }
    

    
    func configureMovieDetails(movieDetail: MovieCell) {
//        
//        
//        if let title = movieDetail.movieLbl.text {
//    //       movieTitle.text = title
//            
//           print(title)
//        }
//        
//        if let path = movieDetail.movieImg.image {
//            
//   //         movieImage.image = path
//            
//            
//        }

    }
    
/*
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/

}
