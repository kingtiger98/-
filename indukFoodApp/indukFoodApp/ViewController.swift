//
//  ViewController.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let restName:[String] = ["카페니니", "하다식당", "민들레초밥", "한솥", "김가네", "노랑통닭"]
    let restCategory:[String] = ["카페", "양식", "일식", "한식", "한식", "양식"]
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // table의 dataSource과 delegate는 이 클래스에서 처리한다는 뜻 필수!!!
        table.dataSource = self
        table.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // 섹션의 갯수를 n개로
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restName.count // row(행)의 갯수 n개로
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // cell 직접 만들어 사용해보자 =========================================================================
        // cell을 MyTableViewCell로 다운캐스팅 하여 부모가 자식의 인스턴스를 쓸 수 있게함
        let cell = table.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        cell.nameLbl.text = self.restName[indexPath.row]
        cell.categoryLbl.text = self.restCategory[indexPath.row]
        cell.resstImg.image = UIImage(named: "\(indexPath.row).png")
        return cell
        
        // 제공 해주는 스타일의 cell 사용법! ========================================================================
        //        // UITableViewCell의 인스턴스 cell 생성
        //        let cell: UITableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: "myCell")
        //        // cell의 textLabel에 indexPath.row값 출력
        //        cell.textLabel?.text = "\(indexPath.row)"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
        print(indexPath.row)
        print("눌렀네")
    }
    
    // MenuViewController로 정보를 이어줄 prepare함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue.identifier값 확인
        if segue.identifier == "showDetail" {
            
            // segue.destination이 MenuViewController가 맞다면 상수 vcSend를 MenuViewController로 다운캐스팅
            let vcSend = segue.destination as? MenuViewController // 이제 vcSend로 MenuViewController의 프로퍼티에 접근가능함
            
            // sender 값을 firstVal에 대입
            if let firstVal = sender as? Int? {
                vcSend?.hang = firstVal //MenuViewController의 hang 변수에 firstVal 대입
            }
        }
    }
}

