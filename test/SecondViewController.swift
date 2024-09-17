//
//  SecondViewController.swift
//  test
//
//  Created by Sefa Aycicek on 17.09.2024.
//

import UIKit

class SecondViewController: UIViewController {

    var str : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackTapped(_ sender: Any) {
        self.dismiss(animated: true) // Modally olarak açılan ekranın kapanmasını sağlar.
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
