//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Hamza Oban on 15.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    var superHeroNames = [String]()
    var superHeroImagesNames = [String]()
    var selectedName = ""
    var selectedImagesName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroNames.append("Batman")
        superHeroNames.append("Spiderman")
        superHeroNames.append("CaptanAmerica")
        superHeroNames.append("IronMan")
        superHeroNames.append("SuperMan")
        
        superHeroImagesNames.append("batman")
        superHeroImagesNames.append("spiderman")
        superHeroImagesNames.append("captanamerica")
        superHeroImagesNames.append("ironman")
        superHeroImagesNames.append("superman")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroImagesNames[indexPath.row]
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedHeroImagesName = selectedImagesName
            destinationVC.selectedHeroName = selectedName
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superHeroImagesNames.remove(at: indexPath.row)
            superHeroNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = superHeroNames[indexPath.row]
        selectedImagesName = superHeroImagesNames[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
                                                      
    
}

