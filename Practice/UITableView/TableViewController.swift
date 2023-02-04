//
//  UITableView.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/20.
//

import UIKit
import SnapKit

final class TableViewController: UIViewController{

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        attribute()
        layout()
    }
}

extension TableViewController{
    private func attribute(){
        //밑줄 제거
        tableView.separatorStyle = .none
        
        tableView.register(TableCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.register(UITableHeader.self, forHeaderFooterViewReuseIdentifier: "Header")
        
    }
    
    private func layout(){
        [tableView].forEach{
            view.addSubview($0)
        }
        
        tableView.snp.makeConstraints{
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableCell else {return UITableViewCell()}
        
     
        
        cell.setContent(indexPath)
        cell.setBackground()
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view =    tableView.dequeueReusableHeaderFooterView(withIdentifier: "Header") as? UITableHeader else { return UIView()}
        
        return view
    }
}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0){
            return 150
        }
        return 70
    }
    
    
}
