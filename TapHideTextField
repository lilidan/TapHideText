import UIKit
class TapHideTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        tapGr = UITapGestureRecognizer(target: self, action:"tap")
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didBeginEditing", name:UITextFieldTextDidBeginEditingNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didEndEditing", name:UITextFieldTextDidEndEditingNotification, object: nil)
        
    }
    
    var tapGr:UITapGestureRecognizer!
    func tap(){
        self.endEditing(true)
    }
    
    func didBeginEditing(){
        self.superview!.addGestureRecognizer(tapGr)
    }
    
    
    func didEndEditing(){
        self.superview!.removeGestureRecognizer(tapGr)
    }
}
