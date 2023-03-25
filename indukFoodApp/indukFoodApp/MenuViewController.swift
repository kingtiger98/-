//
//  MenuViewController.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // 테이블, 전 테이블에서 가져온 식당이름과 식당이미지
    @IBOutlet weak var mTable: UITableView! // 가게상세 테이블뷰
    @IBOutlet weak var restImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!

    // 지도, 전화버튼
    @IBAction func mapBtn(_ sender: Any) {
    }
    @IBAction func callBtn(_ sender: Any) {
    }
    
    
    let restName2: [String] = ["카페니니", "하다식당", "민들레초밥", "한솥", "김가네", "노랑통닭"]
    var hang: Int? // 전 뷰인 ViewController의 cell 선택시 보내지는 sender를 저장할 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTable.delegate = self
        mTable.dataSource = self
        
        restImg?.image = UIImage(named: "\(hang ?? 0).png") // 행의 값(정수 0 ~ ...)을 받아와 그에 맞는 매장 이미지를 출력
        nameLbl.text = restName2[hang ?? 0] // // 행의 값(정수 0 ~ ...)을 받아와 그에 맞는 매장 이름을 출력
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        mCell.menuLbl.text = "취킨"
        mCell.priceLbl.text = "30000원"
        return mCell
    }
    
    
    
}
