import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var main_buImage: UIImageView!
    @IBOutlet weak var main_tvText: UILabel!
    var a = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        main_buImage.isUserInteractionEnabled = true
        let gestureRecognizing = UITapGestureRecognizer(target: self, action: #selector(changePhoto))
        main_buImage.addGestureRecognizer(gestureRecognizing)
    }
    @objc func changePhoto(){
        if(a == 0){
            main_buImage.image = UIImage(named: "piano_one")
            main_tvText.text = "Second Piano"
            a = 1
        }else{
            main_buImage.image = UIImage(named: "piano_three")
            main_tvText.text = "First Piano"
            a = 0
        }
    }
}

