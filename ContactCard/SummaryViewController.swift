//
//  SummaryViewController.swift
//  ContactCard
//
//  Created by Nick Bosman on 30/08/2017.
//  Copyright © 2017 Nick Bosman. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var generateButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func generateButton(_ sender: AnyObject) {
        faceImageView.layer.cornerRadius = 20.0
        faceImageView.layer.borderColor = UIColor.blue.cgColor
        faceImageView.layer.borderWidth = 5.0
        faceImageView.clipsToBounds = true
        if let image=UIImage(named:"person") {
            faceImageView.image = #imageLiteral(resourceName: "Image")
        }
        firstNameLabel.text = "tobias"
        lastNameLabel.text = "termeczky"
        viewDidAppear(true);
    }
    
    override func viewDidAppear(_ animated: Bool) {
        faceImageView.alpha = 0.2
        UIView.animate(withDuration: 1.0,
                       delay:3.0, options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {self.faceImageView.alpha = 1.0},
                       completion: {isDone in print("IsDone"+String(isDone))})
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
