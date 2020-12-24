//
//  HomeViewController.swift
//  UiAssignment
//
//  Created by PCQ226 on 21/12/20.
//

import UIKit

class HomeViewController: ViewController {
    
    let food = [("Pizza"),("Burger"),("Sandwich"),("Maggie")]
    let price = ["$20","$30","$10","$15"]
    let describefood = [("Features tomatoes, sliced mozzarella, basil, and extra olive oil."),("Mayonnaise, sweet pickle relish, aussie mustard, onion & garlic salt, paprika."),("Features tomatoes, sliced Potato, mayonnaise,Cucumber ,bread"),("Maggie,Tomato,Onion,Capsicum")]
    let  foodImages = [UIImage(named: "pizza"), UIImage(named: "burger"), UIImage(named: "sandwich"), UIImage(named: "maggie")]
    @IBOutlet weak var FoodTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FoodTableView.delegate = self
        FoodTableView.dataSource = self
    }
    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    // Dispose of any resources that can be recreated.

    }
    
   

}
extension HomeViewController: UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FoodTableView.dequeueReusableCell(withIdentifier: "Item", for: indexPath) as! TableViewCell
        //let fooditems = food(string[indexPath.row])["food"];)
        let foodTitle = food[indexPath .row]
        let price1 = price[indexPath .row]
        let foodImage = foodImages[indexPath .row]

        cell.FoodLabel.text = foodTitle
        cell.foodPrice.text = price1
        cell.foodImage.image = foodImage
        
        return cell
        
            
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "SendDataSegue", sender: self)
        self.scrollToTop()


    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SendDataSegue" {

        let indexPaths=self.FoodTableView!.indexPathsForSelectedRows!

        let indexPath = indexPaths[0] as NSIndexPath

        let vc = segue.destination as! DetailsViewController

        vc.image = self.foodImages[indexPath.row]!
        //vc.pp = self.price[indexPath.row]!
            vc.pp = self.price[indexPath.row]
            vc.textt = self.describefood[indexPath.row]

        }


    }
    
    
    private func scrollToTop() {
        let topRow = IndexPath(row: 0,
                               section: 0)
        self.FoodTableView.scrollToRow(at: topRow,
                                   at: .top,
                                   animated: true)
    }

}
