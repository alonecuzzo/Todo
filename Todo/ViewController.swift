//
//  ViewController.swift
//  Todo
//
//  Created by Jabari Bell on 3/9/17.
//  Copyright © 2017 ustwo. All rights reserved.
//

import UIKit
import SnapKit

struct TodoViewModel {
    var datasource = ["Walk dog", "Take out the trash", "Call Mom"]
    
    func transformedDatasource() -> [String] {
        
        var temp = [String]()
        
        for item in datasource {
            temp.append(item + ":")
        }
        return temp
    }
}

class ViewController: UIViewController {
    
    //MARK: Property
    private let tableView = UITableView(frame: .zero)
    
    fileprivate let identifier = "Cell"
    let viewModel = TodoViewModel()
    
    fileprivate lazy var datasource: [String] = {
        return self.viewModel.transformedDatasource()
    }()

    
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
        //good to set background on views to identify
//        tableView.backgroundColor = .purple
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        tableView.dataSource = self
    }
    
    private func setupNetworking() {
        //fill in
    }
    
    private func setupDatabase() {
       //fill in
    }

}


//MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = datasource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
}

