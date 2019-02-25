//
//  LeagueVCViewController.swift
//  swoosh_app2
//
//  Created by Peter Paul on 25/02/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
