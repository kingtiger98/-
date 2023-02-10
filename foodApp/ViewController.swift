//
//  ViewController.swift
//  foodApp
//
//  Created by 황재하 on 2/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    let cellIdntifier :String = "cell"

    let data = [
        ["밥은", "휘경곱창", "둘리"],
        ["민들레초밥"],
        ["용궁중화요리", "고빠루"],
        ["노랑통닭", "맘스터치", "BHC치킨"],
        ["민들레뜨락", "키라키라윤"]
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }

    
    // UITableViewDataSource 필수 메서드 : 섹션에 입력된 값의 개수를 표시하는 메서드
    // 섹션 데이터 표시 개수 : 배열 data의 데이터 만큼 출력 - 5개
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    // UITableViewDataSource 필수 메서드 : 테이블 뷰에 사용될 cell을 반환해 주는 메서드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdntifier, for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        
        return cell
    }
    
    // UITableViewDataSource의 numberOfRowsInSections 함수에 사용될 섹션 수를 알려주는 메서드
    // numberOfRowsInSections 메서드는 섹션의 수를 저장하는 역할을 하며, data배열의 섹션 수를 저장하고 있습니다.
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView{
            headerView.textLabel?.textColor = .black
            headerView.textLabel?.textAlignment = .left
            headerView.textLabel?.font = UIFont(name: "copperplate-Bold", size: 18)
        }
    }
    
    // 테이블뷰 섹션 별 헤더 이름 지정
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "한식"
        case 1:
            return "일식"
        case 2:
            return "중식"
        case 3:
            return "양식"
        case 4:
            return "분식"
        case 5:
            return "패스트푸드"
        case 6:
            return "주점"
        default:
            return ""
        }
    }
}

