//
//  ViewController.swift
//  Todo
//
//  Created by Jabari Bell on 3/9/17.
//  Copyright © 2017 ustwo. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    //MARK: Property
    private let tableView = UITableView(frame: .zero)

    
    //MARK: Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        setupTableView()
        setupDatabase()
        setupNetworking()
    }
    
    
    private func setupTableView() {
        
        //frame layout
//        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        tableView.backgroundColor = .purple
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
    }
    
    private func setupNetworking() {
        //fill in
    }
    
    private func setupDatabase() {
       //fill in
    }

}

