//
//  ViewController.swift
//  GetPost
//
//  Created by Вячеслав Квашнин on 21.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ddddd(_ sender: Any) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            if let response = response {
                print(response)
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    @IBAction func postTapped(_ sender: Any) {
        
        print("POST")
    }
    
}

