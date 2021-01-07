import Foundation
import UIKit

extension UserinfoVC {
    public func userLocationIcon() {
        locationIcon.clipsToBounds = true
        locationIcon.layer.masksToBounds = false
        
        locationIcon.layer.cornerRadius = 10
        
        locationIcon.layer.shadowColor = UIColor.black.cgColor
        locationIcon.layer.shadowRadius = 3
        locationIcon.layer.shadowOffset = .zero
        locationIcon.layer.shadowOpacity = 0.5
        
        locationIcon.isUserInteractionEnabled = true
        interactionMap = UIContextMenuInteraction(delegate: self)
        locationIcon.addInteraction(interactionMap)
    }
}
