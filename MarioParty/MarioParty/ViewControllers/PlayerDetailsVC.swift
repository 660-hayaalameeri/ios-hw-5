//
//  PlayerDetailsVC.swift
//  MarioParty
//
//  Created by haya on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerDetailsVC: UIViewController {
 var playerMoment: AVAudioPlayer?
    
    @IBOutlet weak var nameLabel: UILabel!
  
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var randomEpisode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedPlayer.name
        ImageView.image = UIImage(named: selectedPlayer.name)
        backgroundImageView.image = UIImage(named: selectedPlayer.bgName())
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playCharactersound(_ sender: Any) {
        playMoment(momentName: selectedPlayer.momentName())
    
        }
      
    @IBAction func randomEpisode(_ sender: Any) {
     
        randomEpisode.text = episodePicker()
        
    
    }

    
       var seasons = Int()
       
       var decided = ""
       var episodes = Int()
      
       func episodePicker() -> String {
        
        seasons = Int.random(in: 1 ..< 32)
        
        
               if seasons == 1   {
              episodes = Int.random(in: 1 ..< 14)
    }
                    if  seasons == 2 ||
                        seasons == 4 ||
                        seasons == 5 ||
                        seasons == 11 ||
                        seasons == 13 ||
                        seasons == 14 ||
                        seasons == 15 ||
                        seasons == 17 ||
                        seasons == 18 ||
                        seasons == 22 ||
                        seasons == 24 ||
                        seasons == 25 ||
                        seasons == 26 ||
                        seasons == 27 ||
                        seasons == 28 ||
                        seasons == 31 {
                       
                       episodes = Int.random(in: 1 ..< 23)
            }
            if seasons == 3 {
               
                episodes = Int.random(in: 1 ..< 25)
            }
            if  seasons == 6 ||
                seasons == 7 ||
                seasons == 8 ||
                seasons == 9  {
                   
               episodes = Int.random(in: 1 ..< 26)
                 }
            if  seasons == 10 ||
                seasons == 21 ||
                seasons == 30   {
                          
        episodes = Int.random(in: 1 ..< 24)
                       }
            if  seasons == 12 ||
                seasons == 16 ||
                seasons == 20 ||
                seasons == 29    {
                      
          episodes = Int.random(in: 1 ..< 22)
                   }
            else {
                episodes = Int.random(in: 1 ..< 21)
              
            }
       
        
            decided = " Season \(seasons) Episode \(episodes) "
            return decided
        }
         
 func playMoment (momentName : String) {
    let path = Bundle.main.path(forResource: momentName, ofType:nil)!
       let url = URL(fileURLWithPath: path)

       do {
          playerMoment = try AVAudioPlayer(contentsOf: url)
           playerMoment?.play()
       } catch {
           // couldn't load file :(
       }
   }




    

     
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


