//
//  SettingsPageViewController.swift
//  GithubDemo
//
//  Created by Saumeel Gajera on 7/23/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SettingsPageViewController: UIViewController {

    var stars : String?
    @IBOutlet weak var starsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "goToMainScreen"{
//            
//        }
//    }
    
    @IBAction func onSaveTapped(sender: UIBarButtonItem) {
//        performSegueWithIdentifier("mainToSettingsSegue", sender: self)
        
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("mainScreen") as! RepoResultsViewController
        
        if stars != nil{
            vc.stars = self.stars
            
            self.showViewController(vc as UIViewController, sender: vc)
        }else{
            
            self.showViewController(vc as UIViewController, sender: vc)
        }
        
    }
    @IBAction func onSliderValueChanged(sender: AnyObject) {
        let slider = sender as! UISlider
        
        let newStarVal = String(format: "%.0f", slider.value)
        starsLabel.text = newStarVal
        
        print("slider val :",newStarVal)
        
        stars = newStarVal
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
