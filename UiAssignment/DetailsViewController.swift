//
//  DetailsViewController.swift
//  UiAssignment
//
//  Created by PCQ226 on 22/12/20.
//

import UIKit

class DetailsViewController: ViewController {
    
    @IBOutlet var detailView: UIView!
    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var noofitems: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    var image = UIImage()

    
    @IBOutlet weak var foodprices: UITextField!
    var pp = String()
    @IBOutlet weak var selectedText: UITextView!
    var textt = String()


    override func viewDidLoad() {
        super.viewDidLoad()

        self.selectedImage.image=self.image
        self.foodprices.text=self.pp

        self.selectedText.text = self.textt
        quantityStepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        }

    @objc func stepperValueChanged(_ sender:UIStepper!){
        noofitems.text = String(sender.value)
    }
    

    @IBAction func FoodLiked(_ sender: UIButton) {
        let alert = UIAlertController(title: "Like", message: "Do you want to add to Favourite", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                print("Cancel")
        }))
        alert.addAction(UIAlertAction(title: "Add to Favourite", style: .default, handler: { (action) in
                print("Favourite")
        }))
        self.present(alert , animated: true)

    }
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SendDataSegue"){
                //let VC1 = segue.destination as! AddToCartViewController
            //VC1.img = selectedImage.image!
            guard let LandingVC = segue.destination as? LandingPageViewController else { return }
            if let firstname = firstname, let lastname = textFieldLastName.text {
            LandingVC.fullname = firstname + “ “ + lastname
            }
            }
        }*/

    @IBAction func BuyFood(_ sender: Any) {
    }
    
    }

    
    
