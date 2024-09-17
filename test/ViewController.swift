//
//  ViewController.swift
//  test
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoSeconScreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let second = storyboard.instantiateViewController(withIdentifier: "portakal") as? SecondViewController {
            second.modalTransitionStyle = .crossDissolve //UIModalTransitionStyle.crossDissolve
           
            let name = txtName.text ?? ""
            let surName = txtSurname.text ?? ""
            second.str = "\(name) \(surName)"
            
            self.present(second, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let second = segue.destination as? SecondViewController {
            let name = txtName.text ?? ""
            let surName = txtSurname.text ?? ""
            second.str = "\(name) \(surName)"
        }
    }
}

