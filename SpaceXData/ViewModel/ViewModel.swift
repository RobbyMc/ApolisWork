//
//  ViewModel.swift
//  SpaceXData
//
//  Created by Robert McLean on 1/6/23.
//

import Foundation

class ViewModel:APIHandlerProtocol{
    var delegate:ViewModelProtocol?
    var arr = [Rockets]()
    
    func fetchDataFromServer(){
        APIHandler.shared.getRockets()
    }
    
    init(){APIHandler.shared.delegate = self}
    
    func didReceiveRocketData(arr: [Rockets]) {
        
        self.arr = arr
        delegate?.updateUI()
    }
    
    
    func getNumberOfRow()->Int{
        return arr.count
    }
    
    func getRocketFor(index:Int)-> Rockets{
        return arr[index]
    }
    
    
}

protocol ViewModelProtocol{
    func updateUI()
        
    
}
