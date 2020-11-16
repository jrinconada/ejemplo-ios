
import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var age: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = UserDefaults.standard.string(forKey: "name") {
            nameTextField.text = name
        }
    }

    @IBAction func nameChanged(_ sender: UITextField) {
        let name = sender.text!
        print("texto nombre introducido:", name)
    }
    
    @IBAction func surnameChanged(_ sender: UITextField) {
        let surname = sender.text!
        print("Apellido cambiado:", surname)
    }
    
    @IBAction func colorChanged(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        } else {
            view.backgroundColor = UIColor(white: 1, alpha: 1)
        }
    }
    
    @IBAction func ageChanged(_ sender: UISlider) {
        let ageRounded: Int = Int(sender.value)
        age.text = ageRounded.description + " años"
    }
    
    @IBAction func accept(_ sender: Any) {
        let name = nameTextField.text!
        UserDefaults.standard.set(name, forKey: "name")
        
        dismiss(animated: true)
    }
}
