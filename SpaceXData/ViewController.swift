//
//  ViewController.swift
//  SpaceXData
//
//  Created by Robert McLean on 12/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,ViewModelProtocol {
    
    var vm = ViewModel()
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        vm.delegate = self
        vm.fetchDataFromServer()
        
        //tableView.register(UINib(nibName: "RocketTableViewCell", bundle: nil), forCellReuseIdentifier: "RocketTableViewCell")
        
       
    }
    override func viewDidAppear(_ animated:Bool){
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
 
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return vm.getNumberOfRow()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"RocketTableViewCell") as! RocketTableViewCell
        //let rocket = vm.getRocketFor(row: indexPath.row)
        cell.rocketdata = vm.getRocketFor(index: indexPath.row)
           
            return cell
    }
    
    
    
func updateUI() {
    DispatchQueue.main.async{
        self.tableView.reloadData()
    }

    

  
   
    
    
    
    }

}
    




