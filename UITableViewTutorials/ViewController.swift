//
//  ViewController.swift
//  UITableViewTutorials
//
//  Created by Arkar on 20/08/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var simpleTableView: UITableView!
    
    var animalarray : [Animal] = [Animal]()
    //var animalNames: [String] = ["Cat","Dog","Elephant","Gangaroo","Hipopotamos","Lion","Zebra"];
    //var animalImages: [String] = ["Cat","Dog","Elephant","Gangaroo","Hipopotamos","Lion","Zebra"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        simpleTableView.delegate = self
        simpleTableView.dataSource = self
        
        createAnimalArray()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createAnimalArray(){
        
        animalarray.append(Animal(animalName: "Cat", animalImage: "Cat", animalType: "Type A"))
        animalarray.append(Animal(animalName: "Dog", animalImage: "Dog", animalType: "Type B"))
        animalarray.append(Animal(animalName: "Elephant", animalImage: "Elephant", animalType: "Type C"))
        animalarray.append(Animal(animalName: "Lion", animalImage: "Lion", animalType: "Type D"))
        animalarray.append(Animal(animalName: "Zebra", animalImage: "Zebra", animalType: "Type E"))
        animalarray.append(Animal(animalName: "Gangaroo", animalImage: "Gangaroo", animalType: "Type F"))
        animalarray.append(Animal(animalName: "Hipopotamos", animalImage: "Hipopotamos", animalType: "Type G"))
        animalarray.append(Animal(animalName: "Cat", animalImage: "Cat", animalType: "Type A"))
        animalarray.append(Animal(animalName: "Cat", animalImage: "Cat", animalType: "Type A"))
        animalarray.append(Animal(animalName: "Cat", animalImage: "Cat", animalType: "Type A"))
        print("animal count:", animalarray.count)
        
    }
    
}

extension ViewController{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
                
        let animal = animalarray[indexPath.row]
        cell.lblText.text = animal.animalName
        cell.lblText2.text = animal.animalType
        
        cell.imgView1.image = UIImage(named: animal.animalName)
        cell.imgView2.image = UIImage(named: animal.animalName)
        
        print("cell index path: \(indexPath)")
        
        return cell
    }
    
}
