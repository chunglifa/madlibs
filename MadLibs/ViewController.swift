//
//  ViewController.swift
//  MadLibs
//
//  Created by Christopher Chung on 7/9/18.
//  Copyright © 2018 Christopher Chung. All rights reserved.
//
// M A I N    V I E W C O N T R O L L E R

import UIKit

class ViewController: UIViewController {
    var outputAdj: String? = ""
    var outputVerb1: String? = ""
    var outputVerb2: String? = ""
    var outputNoun: String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "..."
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func writeButtonClicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! OtherViewController
    }

    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        print("In unwindToViewController Action")
        let src = segue.source as! OtherViewController
        outputAdj = src.adjective.text
        outputVerb1 = src.verb1.text
        outputVerb2 = src.verb2.text
        outputNoun = src.noun.text
        outputLabel.text = "We are having a perfectly \(outputAdj!) time now. Later we will \(outputVerb1!)and \(outputVerb2!) in the \(outputNoun!)"
    }
    
}

