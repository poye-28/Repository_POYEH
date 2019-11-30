//
//  ViewController.swift
//  Networking with URLSession
//
//  Created by Po yeh Fu on 30/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationId: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var address: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stationUrl = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
        let request = URLRequest(url: stationUrl)
        //request.httpMethod = "Get"
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request){
            (data, response, error) in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            let stationData = try! decoder.decode(StationString.self, from: data)
            
            OperationQueue.main.addOperation {
                self.stationId.text = stationData.stationID
                self.stationName.text = stationData.stationName
                self.address.text = stationData.stationAddress
            }
            
        }
        
        task.resume()
        
    }

    
    

}

