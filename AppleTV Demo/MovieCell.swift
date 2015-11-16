//
//  MovieCell.swift
//  AppleTV Demo
//
//  Created by admin on 9/21/15.
//  Copyright © 2015 CodeWithFelix. All rights reserved.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieLbl: UILabel!
    
    var movieOverview = String()
    var movieReleaseDate = String ()
    var movieRatings = String ()
    
    func configureCell(movie: Movie) {
        
        if let title = movie.title {
            movieLbl.text = title
        }
        
        if let description = movie.overview {
            movieOverview = description
        }
        
        if let releaseDate = movie.releaseDate {
            movieReleaseDate = releaseDate
        }
        
        if let ratings = movie.ratings {
            movieRatings = ratings
        }
        
        if let path = movie.posterPath {
            let url = NSURL(string: path)!
            
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
                
             if let data = NSData(contentsOfURL: url)
             {
                
                dispatch_async(dispatch_get_main_queue()) {
                    let img = UIImage(data: data)
                    self.movieImg.image = img
                    
                }
            }
                
            }
        }
        
    }
    
}
