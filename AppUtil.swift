//
//  AppUtil.swift
//  
//
//  Created by Naoto Takahashi on 2016/10/26.
//
//

import UIKit

//UsersDefault Key
let ALGORITHM = "ALGORITHM"
let THRESHOLD = "THRESHOLD"

enum AlgorithmType : Int {
    case KNN
    case MOG2
    case DIFF
}

class AppUtil {
    //Config
    static let fps = 15;
    static let size = CGSize(width: 400, height: 300)
    static let THRESHOLD_MIN : Float = 0.0
    static let THRESHOLD_MAX : Float = 50.0

    
    //Util Functions
    class func removeFilesWhenInit(path : String) {
        let manager = FileManager.default
        if manager.fileExists(atPath: path) {
            do{
                try manager.removeItem(atPath: path)
            }catch{
                print("ファイルの削除に失敗")
            }
        }
    }
    
    class func isiPhone6Or6S() -> Bool {
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone && TARGET_OS_SIMULATOR != 1{
            let r = UIScreen.main.bounds
            if r.size.height == 667 {
                return true
            }
        }
        
        return false
    }
    
    class func viewControllerFromId(id : String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: id)
        
        return vc
    }
}
