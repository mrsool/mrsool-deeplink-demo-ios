//
//  ViewController.swift
//  MrsoolDeeplinkDemo
//
//  Created by Abdullah Umer on 30/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonOpenDidTapped(_ sender: Any) {
        
        let url = URL(string: "https://mrsool.app.link/nGO")!
        let queryItems = [URLQueryItem(name: "details", value: "Ask about order 123456"),
                          URLQueryItem(name: "pickup", value: "24.8065527,46.7436086"),
                          URLQueryItem(name: "dropoff", value: "24.8072525,46.7228799")]
        
        guard let newUrl = url.appending(queryItems) else {
            print("error")
            return
        }
        
        UIApplication.shared.open(newUrl, options: [:], completionHandler: nil)
        
    }
}

