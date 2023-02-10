//
//  DataViewController.swift
//  foodApp
//
//  Created by 황재하 on 2/10/23.
//

import UIKit
import MapKit

// MapKit 사용하기 위해 CLLocationManagerDelegate 프로토콜 채택
class DataViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var label: UILabel!
    
    var textToSet : String?
    let locationmanager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationmanager.delegate = self
        locationmanager.desiredAccuracy = kCLLocationAccuracyBest
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.startUpdatingLocation()
        myMapView.showsUserLocation = true
        
        // Do any additional setup after loading the view.
    }
    
    // 뷰에 보여줄 컨텐츠 들을 미리 로드하는 메서드
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = self.textToSet // viewController에서 textToSet으로 지정한 텍스트값을 읽어 label.text에 초기화
        mapControll() // 함수 실행
        
    }

    // 위도, 경도, 스팬을 입력받아 지도에 표시
    func golocation(latitudeValue:CLLocationDegrees, longtudeValue: CLLocationDegrees, delta span:Double) -> CLLocationCoordinate2D {
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, longtudeValue)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: spanValue)
        myMapView.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    // 특정 위도-경도에 핀 설치
    func setAnnotation(latitudeValue:CLLocationDegrees, longtudeValue: CLLocationDegrees, delta span:Double){
        let annotation = MKPointAnnotation()
        annotation.coordinate = golocation(latitudeValue: latitudeValue, longtudeValue: longtudeValue, delta: span)
        myMapView.addAnnotation(annotation)
    }
    
    // textToSet.text 값에 따른 위도, 경도 초기화
    func mapControll(){
        switch textToSet {
        case "밥은":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "휘경곱창":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "둘리":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "민들레 초밥":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "용궁중화요리":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "고빠루":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "하다식당":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "킹콩 떡볶이":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "김가네":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "노랑통닭":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "맘스터치":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "BHC치킨":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "민들레 뜨락":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        case "키라키라윤":
            setAnnotation(latitudeValue: 37.63462, longtudeValue: 127.05803, delta: 0.1)
        default:
            return
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
