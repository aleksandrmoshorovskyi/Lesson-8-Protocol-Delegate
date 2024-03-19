//
//  Protocol.swift
//  Lesson-8-Protocol-Delegate
//
//  Created by Aleksandr Moroshovskyi on 19.03.2024.
//

import Foundation
import UIKit

protocol ChangeColorProtocol: AnyObject {
    
    func changeBackgroundColor(color: UIColor)
}
