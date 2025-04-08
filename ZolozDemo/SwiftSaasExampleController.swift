//
//  SwiftSaasExampleController.swift
//  ZolozSaasExample
//
//  Created by ZouLu on 2023/9/4.
//

import UIKit
import hummer


public class SwiftSaasExampleController: UIViewController {
    
    var host = UITextField()
    var ref = UITextField()
    var docType = UITextField()
    var level = UITextField()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "saas demo swift"
        
        self.view.backgroundColor = UIColor.white

        host = SwiftEditTextUtils.createTextField(on: self.view, with:"HOST", defaultTitle:"http://lan_ip:lan_port", index: 1)
        ref = SwiftEditTextUtils.createTextField(on: self.view, with:"API", defaultTitle:"/api/realid/initialize", index: 2)
        docType = SwiftEditTextUtils.createTextField(on: self.view, with:"DOC", defaultTitle: "00000001003", index: 3)
        level = SwiftEditTextUtils.createTextField(on: self.view, with:"LEVEL", defaultTitle: "REALID0001", index: 4)
        
        let button = UIButton(type:.system)
        button.frame = CGRect(x: 20, y: 50 + 50 * 5, width: 200, height: 50)
        button.setTitle("start zoloz", for:.normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(startsaas), for:.touchUpInside)
        view.addSubview(button)
        
    }
    
    @objc public func startsaas() {
          //实现代码
        let urlStr = String(format: "%@%@", SwiftEditTextUtils.getAndSave(textField: host),SwiftEditTextUtils.getAndSave(textField: ref))
        let metainfo = ZLZFacade.getMetaInfo()
        let paramDic = [
            "metaInfo": metainfo,
            "serviceLevel": SwiftEditTextUtils.getAndSave(textField: level),
            "docType": SwiftEditTextUtils.getAndSave(textField: docType),
            "pages": "2"]
        
        let url = URL(string: urlStr)
        
        weak var weakSelf = self
        sendPostRequest(url: url!, initDic: paramDic) { (data) in
            print(data)
            
            let bizParam = NSMutableDictionary()
            bizParam[kZLZCurrentViewControllerKey] = self
            
            let clientConfig = data["clientCfg"] as? String
            let transactionId = data["transactionId"] as? String
            print("打印transactionId==", transactionId ?? "null")
            
            let request = ZLZRequest.init(zlzConfig: clientConfig ?? "", bizConfig: bizParam as! [AnyHashable : Any])
            ZLZFacade.sharedInstance().start(with: request) { response in
                DispatchQueue.main.async {
                    weakSelf?.checkResultWithId(transactionId: transactionId ?? "")
                }
            } interruptCallback: { response in
                DispatchQueue.main.async {
                    SwiftEditTextUtils.showAlert(on: weakSelf!, with: "interrupt", message: String(format: "retcode:%@,extinfo:%@", response.retcode, response.extInfo))
                }
           }
        }

     }
    
    func sendPostRequest(url: URL, initDic: [String: Any], completion: @escaping ([String: Any]) -> Void) {
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-type")

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: initDic, options: .prettyPrinted)
            let bodyJson = String(data: jsonData, encoding: .utf8)
            request.httpBody = bodyJson?.data(using: .utf8)
        } catch {
            print("Error: \(error.localizedDescription)")
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode == 200 {
                    do {
                        let result = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
                        DispatchQueue.main.async {
                            completion(result)
                        }
                    } catch {
                        print(error)
                    }
                } else {
                    SwiftEditTextUtils.showAlert(on: self, with: "network error", message: "network error")
                }
            }
        })
        task.resume()
    }
    
    func checkResultWithId( transactionId:String){
        var checkResultServerString = String(format: "%@%@", SwiftEditTextUtils.getAndSave(textField: host), SwiftEditTextUtils.getAndSave(textField: ref))
        checkResultServerString = checkResultServerString.replacingOccurrences(of: "initialize", with: "checkresult")
        let checkResultServerUrl = URL(string: checkResultServerString)
        let paramDic:[String: String] = ["transactionId": transactionId]
        
        sendPostRequest(url: checkResultServerUrl!, initDic: paramDic) { data in
            
            print("checkResult结果打印=====\(data)")
        }
    }
    
}
