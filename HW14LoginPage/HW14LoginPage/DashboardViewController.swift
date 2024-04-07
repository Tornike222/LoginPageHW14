//
//  DashboardViewController.swift
//  HW14LoginPage
//
//  Created by telkanishvili on 07.04.24.
//

import UIKit

class DashboardViewController: UIViewController {

    let greetingBody: UILabel = {
        let greetingBody = UILabel()
        greetingBody.numberOfLines = 7
        greetingBody.text = "გილოცავ 🚀 \nშენ ყველა ვალიდაცია გაიარე და ამის ნიშნად გადმოგეცემა ჩართული ტელევიზორი"
        greetingBody.textAlignment = .center
        greetingBody.font = UIFont.systemFont(ofSize: 40)
        greetingBody.textColor = .white
        greetingBody.translatesAutoresizingMaskIntoConstraints = false
        
        return greetingBody
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        addWelcomeScreen()
    }
    
    
    func addWelcomeScreen(){
        view.addSubview(greetingBody)
        greetingBody.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        greetingBody.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        greetingBody.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
 
}



#Preview{
    DashboardViewController()
}
