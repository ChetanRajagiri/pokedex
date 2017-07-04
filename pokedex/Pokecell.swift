//
//  Pokecell.swift
//  pokedex
//
//  Created by chetan rajagiri on 30/05/17.
//  Copyright © 2017 chetan rajagiri. All rights reserved.
//

import UIKit

class Pokecell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(_ pokemon: Pokemon)  {
        
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage (named: "\(self.pokemon.pokedexId)")
        
        
        
    }
    
}
