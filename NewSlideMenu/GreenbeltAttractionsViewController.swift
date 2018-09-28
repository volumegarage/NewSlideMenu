//
//  GreenbeltAttractionsViewController.swift
//  NewSlideMenu
//
//  Created by David Cate on 9/27/18.
//  Copyright © 2018 David Cate. All rights reserved.
//

import UIKit

class GreenbeltAttractionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    let attractionsArray = ["Allandale Mansion", "Netherland Inn", "Exchange Place", "Boardwalk", "Kingsport Mill", "Riverfront Bridge", "Clan of The Cave Bear"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = UIColor.green
        
        menuButton.target = self.revealViewController()
        //What action will be called when menu selected
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return attractionsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GreenbeltAttractionsCell", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = attractionsArray[indexPath.row]
        
        return cell
    }

    
    
    

}
