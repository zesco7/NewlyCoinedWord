//
//  ViewController.swift
//  NewlyCoinedWord
//
//  Created by Mac Pro 15 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var browser: UITextField!
    @IBOutlet weak var browserButton: UIButton!
    
    @IBOutlet weak var hashTag1: UIButton!
    @IBOutlet weak var hashTag2: UIButton!
    @IBOutlet weak var hashTag3: UIButton!
    @IBOutlet weak var hashTag4: UIButton!
    
    @IBOutlet weak var explanationOfNewWord: UILabel!
    
    
    
    var hashTagArr = ["윰차", "실매", "만만잘부", "꾸안꾸"]
    var hashTagMeaning : [String:String] = ["윰차" : "1", "실매" : "2" , "만만잘부" : "3", "꾸안꾸" : "4"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        
        browser.layer.borderWidth = 2
        browser.layer.borderColor = UIColor.black.cgColor
        browserButton.layer.backgroundColor = UIColor.black.cgColor
        
        hashTag1.setTitle(hashTagArr[0], for: .normal)
        hashTag1.layer.borderWidth = 0.5
        hashTag1.layer.borderColor = UIColor.black.cgColor
        hashTag1.layer.cornerRadius = 10
        hashTag1.sizeToFit()
        
        
        hashTag2.setTitle(hashTagArr[1], for: .normal)
        hashTag2.layer.borderWidth = 0.5
        hashTag2.layer.borderColor = UIColor.black.cgColor
        hashTag2.layer.cornerRadius = 10
        hashTag2.sizeToFit()
        
        hashTag3.setTitle(hashTagArr[2], for: .normal)
        hashTag3.layer.borderWidth = 0.5
        hashTag3.layer.borderColor = UIColor.black.cgColor
        hashTag3.layer.cornerRadius = 10
        hashTag3.sizeToFit()
        
        hashTag4.setTitle(hashTagArr[3], for: .normal)
        hashTag4.layer.borderWidth = 0.5
        hashTag4.layer.borderColor = UIColor.black.cgColor
        hashTag4.layer.cornerRadius = 10
        hashTag4.sizeToFit()
        
    }
    //돋보기버튼 누르면 신조어뜻 보여주기
    @IBAction func browserButtonClicked(_ sender: UIButton) {
        
    }
    
    
    
    //리턴키누르면 키보드 내리기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                self.view.endEditing(true)
                return true
    }
    //루트뷰 탭하면 키보드 내리기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)

    }
    
    /*
     1. CGColor UIColor차이 체크
     2. 브라우저부분이랑 신조어표시부분 폭 동일하게 설정하는 방법
     -> 이미지크기보다 이미지가 크게 잡혀서 이미지사이즈랑 동일하게 사이드마진주면 안맞음
     */
}

