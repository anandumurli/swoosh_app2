//
//  LeagueVCViewController.swift
//  swoosh_app2
//
//  Created by Peter Paul on 25/02/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: athlete!
    @IBAction func unwind(lab: UIStoryboardSegue){
        
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBOutlet weak var NextBut: UIButton!
    
    @IBAction func onMensTapped(_ sender: Any) {
        setLeague(leagueType: "Mens")
        
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        setLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        setLeague(leagueType: "Co-ed")
    }
    
    func setLeague(leagueType: String){
        player.league = leagueType
        NextBut.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = athlete()
        print(player.league)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let VC = segue.destination as? SkillVC{
            VC.player = player
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

}
