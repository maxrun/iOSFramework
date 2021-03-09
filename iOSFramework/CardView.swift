//
//  CardView.swift
//  iOSFramework
//
//  Created by itribdev1 on 9/3/2564 BE.
//

import UIKit

@IBDesignable
public class CardView: UIView {

    static let nibName = "CardView"
    @IBOutlet weak var textLabel: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    private func xibSetup() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.backgroundColor = .clear
        view.clipsToBounds = false
    }

    private func loadViewFromNib() -> UIView? {
        let nibName = CardView.nibName
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
                    withOwner: self,
                    options: nil).first as? UIView
    }
    

}
