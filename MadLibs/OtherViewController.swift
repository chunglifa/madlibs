//
//  OtherViewController.swift
//  MadLibs
//
//  Created by Christopher Chung on 7/9/18.
//  Copyright © 2018 Christopher Chung. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var noun: UITextField!
    @IBAction func submitPressed(_ sender: UIButton) {
        let adj = adjective.text
        let vb1 = verb1.text
        let vb2 = verb2.text
        let n = noun.text
        performSegue(withIdentifier: "backSegue", sender: nil)
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
