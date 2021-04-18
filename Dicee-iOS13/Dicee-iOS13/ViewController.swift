import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rigthDiceNumber = 5
    var max = 5
    var min = 0
    var step = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        var diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rigthDiceNumber]
        
        leftDiceNumber  = leftDiceNumber >= max ? min : leftDiceNumber + step
        rigthDiceNumber = rigthDiceNumber <= min ? max : rigthDiceNumber - step
    
    }
}

