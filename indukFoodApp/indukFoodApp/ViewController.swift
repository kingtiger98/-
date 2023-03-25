//
//  ViewController.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // table의 dataSource과 delegate는 이 클래스에서 처리한다는 뜻 필수!!!
        table.dataSource = self
        table.delegate = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // 섹션의 갯수를 2개로
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // row(행)의 갯수 10개로
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell 직접 만들어 사용해보자 =========================================================================
        // cell을 MyTableViewCell로 다운캐스팅 하여 부모가 자식의 인스턴스를 쓸 수 있게함
        let cell = table.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        cell.nameLbl.text = "치킨"
        cell.categoryLbl.text = "양식"
        return cell
        
        // 제공 해주는 스타일의 cell 사용법! ========================================================================
        //        // UITableViewCell의 인스턴스 cell 생성
        //        let cell: UITableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: "myCell")
        //        // cell의 textLabel에 indexPath.row값 출력
        //        cell.textLabel?.text = "\(indexPath.row)"
    }
}

