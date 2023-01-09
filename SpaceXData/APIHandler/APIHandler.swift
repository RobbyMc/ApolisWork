//
//  APIHandler.swift
//  SpaceXData
//
//  Created by Robert McLean on 1/6/23.
//

import Foundation


class APIHandler{
    
    static let shared = APIHandler.init()
    var rocketArray = [Rockets]()
    init() {}
    var delegate: APIHandlerProtocol?
    func getRockets(){
        let urlSession = URLSession.shared
        
        guard let url = URL.init(string:ServerURL.Rockets.rawValue) else{
            return
        }
        let request = URLRequest.init(url: url)
        
    
        urlSession.dataTask(with: request){
            data, urlResponse, error in
            
            if error == nil && data != nil{
                print(data ?? "No data from servers")
            }
                
                
                do{
                    let rockets: [Rockets] = try
                    JSONDecoder().decode([Rockets].self, from: data!)
                    self.delegate?.didReceiveRocketData(arr: rockets)
                }catch{
                    print(error)
                }
            }.resume()
        }
    }
        
    


protocol APIHandlerProtocol{
    func didReceiveRocketData(arr:[Rockets])

    
}
