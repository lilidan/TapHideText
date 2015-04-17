
import UIKit

class TapHideTextView: UITextView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tapGr = UITapGestureRecognizer(target: self, action:"tap")
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didBeginEditing", name:UITextViewTextDidBeginEditingNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didEndEditing", name:UITextViewTextDidEndEditingNotification, object: nil)
        
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
