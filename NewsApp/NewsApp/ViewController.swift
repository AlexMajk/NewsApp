//
//  ViewController.swift
//  NewsApp
//
//  Created by Александр Майко on 10.04.2024.
//
import Alamofire
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APICaller.shared.getTopStories { data in
            print(data)
        }
    }
}

