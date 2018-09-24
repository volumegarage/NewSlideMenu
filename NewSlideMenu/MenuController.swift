//
//  MenuController.swift
//  NewSlideMenu
//
//  Created by David Cate on 9/21/18.
//  Copyright © 2018 David Cate. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuOptions: Array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuOptions = ["Home", "Message", "Maps", "Rules", "Destinations", "Photos", "Social", "Contact Us", "Report Issue"]
        
        // Gradient Work
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        newLayer.frame = view.frame
        newLayer.opacity = 0.4
        
        view.layer.insertSublayer(newLayer, at: 0)

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        
        cell.menuLabel.text! = menuOptions[indexPath.row]
//        cell.optionImage.image = UIImage(named:menuOptions[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController: SWRevealViewController = self.revealViewController()
        
        let cell: MenuCell = tableView.cellForRow(at: indexPath) as! MenuCell
        
        if cell.menuLabel.text! == "Home"
        {
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
            
        }
            if cell.menuLabel.text! == "Message"
            {
                let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let desController = mainStoryboard.instantiateViewController(withIdentifier: "MEssageViewController") as! MEssageViewController
                let newFrontViewController = UINavigationController.init(rootViewController:desController)
                
                revealViewController.pushFrontViewController(newFrontViewController, animated: true)
            }
        
        
        if cell.menuLabel.text! == "Destinations"
        {
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "GreenbeltAttractionsTableViewController") as! GreenbeltAttractionsTableViewController
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
            
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
