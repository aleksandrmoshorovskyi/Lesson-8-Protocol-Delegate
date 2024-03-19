//
//  ViewController2.swift
//  Lesson-8-Protocol-Delegate
//
//  Created by Aleksandr Moroshovskyi on 19.03.2024.
//

import UIKit

class ViewController2: UIViewController {

    //weak var viewontroller: ViewController?
    weak var delegate: ChangeColorProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        button.backgroundColor = .red
        
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonDidTap() {
        debugPrint("ViewController2 -> buttonDidTap")
        //viewontroller?.view.backgroundColor = .purple
        delegate?.changeBackgroundColor(color: .purple)
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
