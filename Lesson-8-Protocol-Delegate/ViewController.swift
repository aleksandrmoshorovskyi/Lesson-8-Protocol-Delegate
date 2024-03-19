//
//  ViewController.swift
//  Lesson-8-Protocol-Delegate
//
//  Created by Aleksandr Moroshovskyi on 19.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someBtn: UIButton!
    
    @IBAction func someBtnClicked(_ sender: UIButton) {
        
        let viewController2 = ViewController2()
        viewController2.view.backgroundColor = .green
        
        //viewController2.viewontroller = self
        viewController2.delegate = self
        
        present(viewController2, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: ChangeColorProtocol {
    
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
}
