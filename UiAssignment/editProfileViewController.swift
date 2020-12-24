//
//  editProfileViewController.swift
//  UiAssignment
//
//  Created by PCQ226 on 21/12/20.
//

import UIKit

class editProfileViewController: ViewController ,UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var imagePicker: UIImageView!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editMobNo: UITextField!
    
    @IBOutlet weak var editbdt: UITextField!
    
    @IBOutlet weak var editLocation: UITextField!
    @IBOutlet weak var locationPicker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    let birthday = UIDatePicker()
        var selectedItem: String?

        let data = ["jamnagar","Rajkot","Ahmedabad","Surat"]

    override func viewDidLoad() {
        super.viewDidLoad()
                locationPicker.delegate = self
                locationPicker.dataSource = self
                createDatePicker()
    }
    func createDatePicker(){
            let toolBar = UIToolbar()
            toolBar.sizeToFit()
            let donebtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(datePressed))
            toolBar.setItems([donebtn], animated: true)
            
            editbdt.inputAccessoryView = toolBar
            editbdt.inputView = birthday
            birthday.datePickerMode = .date
        }
        @objc func datePressed()
        {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            editbdt.text = formatter.string(from: birthday.date)
            self.view.endEditing(true)
            
        }
    @IBAction func selectImage(_ sender: UIButton) {
        let ImagePicker = UIImagePickerController()
                            ImagePicker.sourceType = .photoLibrary
                            ImagePicker.delegate = self
                            present(ImagePicker, animated: true)
    }
    
    @IBAction func ProfileEdited(_ sender: UIButton) {
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                picker.dismiss(animated: true, completion: nil)

                if let image = info[.originalImage] as? UIImage {
                    imagePicker.image = image
            
                }

}
}
extension editProfileViewController : UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    
}
extension editProfileViewController : UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedItem = data[row]
        editLocation.text = selectedItem

        
    }
}
