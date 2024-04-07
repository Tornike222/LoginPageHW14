//
//  LoginViewController.swift
//  HW14LoginPage
//
//  Created by telkanishvili on 06.04.24.
//

import UIKit

class LoginViewController: UIViewController {
    
    let laptopIcon: UIImageView = {
        let laptopIcon = UIImageView(image: UIImage(systemName: "lock.laptopcomputer"))
        laptopIcon.translatesAutoresizingMaskIntoConstraints = false
        laptopIcon.tintColor = .darkGray
        
        return laptopIcon
    }()
    
    let greetingsStack: UIStackView = {
        let greetingsStack = UIStackView()
        greetingsStack.axis = .vertical
        greetingsStack.spacing = 4
        greetingsStack.translatesAutoresizingMaskIntoConstraints = false
        
        return greetingsStack
    }()
    
    let greetingHeader: UILabel = {
        let greetingHeader = UILabel()
        greetingHeader.text = "მოგესალმებით!"
        greetingHeader.translatesAutoresizingMaskIntoConstraints = false
        greetingHeader.font = UIFont.systemFont(ofSize: 30)
        
        return greetingHeader
    }()
    
    let greetingBody: UILabel = {
        let greetingBody = UILabel()
        greetingBody.numberOfLines = 4
        greetingBody.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზა თქვენს ანგარიშზე შესვლაა, თუ არ გაქვთ ანგარიში გააკეთეთ, თუ არ გსურთ გაკეთება დასტოვეთ აქაურობა და წაშალეთ აპლიკაცია."
        greetingBody.layer.opacity = 0.7
        greetingBody.adjustsFontSizeToFitWidth = true
        greetingBody.translatesAutoresizingMaskIntoConstraints = false
        
        return greetingBody
    }()
    
    let loginView: UIView = {
        let loginView = UIView()
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        return loginView
    }()
    
    let authorizationLabel: UILabel = {
        let authorizationLabel = UILabel()
        authorizationLabel.text = "ავტორიზაცია"
        authorizationLabel.textAlignment = .center
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return authorizationLabel
    }()
    
    let lineUnderAuthorizationLabel: UIView = {
        let lineUnderAuthorizationLabel = UIView()
        lineUnderAuthorizationLabel.backgroundColor = UIColor.systemCyan
        lineUnderAuthorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return lineUnderAuthorizationLabel
    }()
    
    let mainStackView: UIStackView = {
        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.spacing = 25
        //        inputFieldsSV.backgroundColor = .red
        
        
        return mainStackView
    }()
    
    let fullNameLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.text = "სრული სახელი"
        fullNameLabel.font = UIFont.systemFont(ofSize: 15)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return fullNameLabel
    }()
    
    let fullNameInputField: UITextField = {
        let fullNameInputField = UITextField()
        fullNameInputField.translatesAutoresizingMaskIntoConstraints = false
        fullNameInputField.placeholder = "მაგ: ქეთინო ფერი"
        fullNameInputField.borderStyle = .roundedRect
        fullNameInputField.layer.masksToBounds = true
        fullNameInputField.layer.cornerRadius = 5
        fullNameInputField.layer.borderWidth = 1
        fullNameInputField.layer.borderColor = UIColor.lightGray.cgColor
        
        return fullNameInputField
    }()
    
    let mailLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.text = "ელ. ფოსტა"
        fullNameLabel.font = UIFont.systemFont(ofSize: 15)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return fullNameLabel
    }()
    
    let mailInputField: UITextField = {
        let mailInputField = UITextField()
        mailInputField.translatesAutoresizingMaskIntoConstraints = false
        mailInputField.placeholder = "მაგ: kusuna@mail.ru"
        mailInputField.borderStyle = .roundedRect
        mailInputField.layer.masksToBounds = true
        mailInputField.layer.cornerRadius = 5
        mailInputField.layer.borderWidth = 1
        mailInputField.layer.borderColor = UIColor.lightGray.cgColor
        
        return mailInputField
    }()
    
    let passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.text = "პაროლი"
        passwordLabel.font = UIFont.systemFont(ofSize: 15)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return passwordLabel
    }()
    
    let passwordInputField: UITextField = {
        let passwordInputField = UITextField()
        passwordInputField.translatesAutoresizingMaskIntoConstraints = false
        passwordInputField.placeholder = "მაგ: busuna123, jajanaIsMyKumiri2010"
        passwordInputField.borderStyle = .roundedRect
        passwordInputField.layer.masksToBounds = true
        passwordInputField.layer.cornerRadius = 5
        passwordInputField.layer.borderWidth = 1
        passwordInputField.layer.borderColor = UIColor.lightGray.cgColor
        passwordInputField.isSecureTextEntry = true
        
        return passwordInputField
    }()
    
    let allInputsStackView: UIStackView = {
        let allInputsStackView = UIStackView()
        allInputsStackView.axis = .vertical
        allInputsStackView.spacing = 10
        allInputsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return allInputsStackView
    }()
    
    let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.backgroundColor = UIColor.systemCyan
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.layer.cornerRadius = 10
        loginButton.setTitle("შესვლა", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        
        return loginButton
    }()
    
    let smallGrayLine: UIView = {
        let smallGrayLine = UIView()
        smallGrayLine.backgroundColor = UIColor.gray
        smallGrayLine.translatesAutoresizingMaskIntoConstraints = false
        
        return smallGrayLine
    }()
    
    let smallGrayLine1: UIView = {
        let smallGrayLine = UIView()
        smallGrayLine.backgroundColor = UIColor.gray
        smallGrayLine.translatesAutoresizingMaskIntoConstraints = false
        
        return smallGrayLine
    }()
    
    let divideStackView: UIStackView = {
        let divideStackView = UIStackView()
        divideStackView.axis = .horizontal
        divideStackView.alignment = .center
        divideStackView.layer.opacity = 0.8
        
        
        return divideStackView
    }()
    
    let anKeywordLabel: UILabel = {
        let anKeywordLabel = UILabel()
        anKeywordLabel.text = "ან"
        anKeywordLabel.font = UIFont.systemFont(ofSize: 15)
        anKeywordLabel.translatesAutoresizingMaskIntoConstraints = false
        anKeywordLabel.textAlignment = .center
        
        return anKeywordLabel
    }()
    
    let socialButtonsSV: UIStackView = {
        let socialButtonsSV = UIStackView()
        socialButtonsSV.axis = .vertical
        socialButtonsSV.spacing = 15
        socialButtonsSV.translatesAutoresizingMaskIntoConstraints = false
        
        return socialButtonsSV
    }()
    
    let useGoogleButton: UIButton = {
        let useGoogleButton = UIButton()
        useGoogleButton.backgroundColor = UIColor.lightGray
        useGoogleButton.translatesAutoresizingMaskIntoConstraints = false
        useGoogleButton.layer.cornerRadius = 10
        let googleIcon = UIImage(systemName: "g.circle.fill",withConfiguration: UIImage.SymbolConfiguration(pointSize: 35))
        useGoogleButton.setImage(googleIcon, for: .normal)
        useGoogleButton.tintColor = .black
        useGoogleButton.setTitle(" გამოიყენეთ გუგული", for: .normal)
        useGoogleButton.setTitleColor(.darkText, for: .normal)
        
        return useGoogleButton
    }()
    
    let useFacebookButton: UIButton = {
        let useFacebookButton = UIButton()
        useFacebookButton.backgroundColor = UIColor.lightGray
        useFacebookButton.translatesAutoresizingMaskIntoConstraints = false
        useFacebookButton.layer.cornerRadius = 10
        let fbIcon = UIImage(systemName: "f.circle.fill",withConfiguration: UIImage.SymbolConfiguration(pointSize: 35))
        useFacebookButton.setImage(fbIcon, for: .normal)
        useFacebookButton.tintColor = .black
        useFacebookButton.setTitle(" გამოიყენეთ ფეიზბურგი", for: .normal)
        useFacebookButton.setTitleColor(.darkText, for: .normal)
        
        return useFacebookButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addIcon()
        greeting()
        addLoginView()
        addAuthorizationLabel()
        addLineUnderAuthorizationLabel()
        addInputFieldSV()
        addFullNameSV()
        addInputsToSV()
        addLoginButton()
        addDivideStackView()
        addGrayLineWithLabel()
        addSocialButtonsSV()
        addGoogleButton()
        addFBButton()
    }
    
    func addIcon(){
        view.addSubview(laptopIcon)
        
        laptopIcon.widthAnchor.constraint(equalToConstant: 90).isActive = true
        laptopIcon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        laptopIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        laptopIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func greeting(){
        view.addSubview(greetingsStack)
        greetingsStack.addArrangedSubview(greetingHeader)
        greetingsStack.addArrangedSubview(greetingBody)
        
        greetingsStack.topAnchor.constraint(equalTo: laptopIcon.bottomAnchor, constant: 20).isActive = true
        greetingsStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        greetingsStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
    }
    
    func addLoginView(){
        view.addSubview(loginView)
        
        loginView.topAnchor.constraint(equalTo: greetingsStack.bottomAnchor, constant: 20).isActive = true
        loginView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        loginView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        //        loginView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -28).isActive = true
    }
    
    func addAuthorizationLabel(){
        loginView.addSubview(authorizationLabel)
        
        authorizationLabel.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 4.5).isActive = true
        authorizationLabel.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -4.5).isActive = true
        authorizationLabel.topAnchor.constraint(equalTo: loginView.topAnchor).isActive = true
        authorizationLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    func addLineUnderAuthorizationLabel(){
        loginView.addSubview(lineUnderAuthorizationLabel)
        
        lineUnderAuthorizationLabel.widthAnchor.constraint(equalTo: authorizationLabel.widthAnchor).isActive = true
        lineUnderAuthorizationLabel.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineUnderAuthorizationLabel.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 4.5).isActive = true
        lineUnderAuthorizationLabel.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -4.5).isActive = true
        lineUnderAuthorizationLabel.topAnchor.constraint(equalTo: authorizationLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    func addInputFieldSV(){
        loginView.addSubview(mainStackView)
        
        
        mainStackView.leftAnchor.constraint(equalTo: loginView.leftAnchor).isActive = true
        mainStackView.rightAnchor.constraint(equalTo: loginView.rightAnchor).isActive = true
        mainStackView.topAnchor.constraint(equalTo: lineUnderAuthorizationLabel.bottomAnchor, constant: 24).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: loginView.bottomAnchor).isActive = true
        
    }
    //ახალი სტეკვიუს ჩამატება
    func addFullNameSV(){
        mainStackView.addArrangedSubview(allInputsStackView)
        
        allInputsStackView.leftAnchor.constraint(equalTo: mainStackView.leftAnchor).isActive = true
        allInputsStackView.rightAnchor.constraint(equalTo: mainStackView.rightAnchor).isActive = true
        allInputsStackView.topAnchor.constraint(equalTo: mainStackView.topAnchor).isActive = true
    }
    //ახალ ჩამატებულ სტეკვიუში ვამატებ ლეიბლებს და ინფუთ ფილდებს
    func addInputsToSV(){
        allInputsStackView.addArrangedSubview(fullNameLabel)
        allInputsStackView.addArrangedSubview(fullNameInputField)
        allInputsStackView.addArrangedSubview(mailLabel)
        allInputsStackView.addArrangedSubview(mailInputField)
        allInputsStackView.addArrangedSubview(passwordLabel)
        allInputsStackView.addArrangedSubview(passwordInputField)
    }
    
    func addLoginButton(){
        mainStackView.addArrangedSubview(loginButton)
        
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.addTarget(self, action: #selector(loginButtonTouchedUp(_:)), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonTouchedDown(_:)), for: .touchDown)
        
    }
    
    func addDivideStackView(){ //divides authorization flow and login with another options flow from each other
        mainStackView.addArrangedSubview(divideStackView)
        
        divideStackView.leftAnchor.constraint(equalTo: mainStackView.leftAnchor).isActive = true
        divideStackView.rightAnchor.constraint(equalTo: mainStackView.rightAnchor).isActive = true
        
    }
    
    
    func addGrayLineWithLabel(){
        divideStackView.addArrangedSubview(smallGrayLine)
        
        smallGrayLine.widthAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 0.4).isActive = true
        smallGrayLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        divideStackView.addArrangedSubview(anKeywordLabel)
        divideStackView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        divideStackView.addArrangedSubview(smallGrayLine1)
        
        smallGrayLine1.widthAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 0.4).isActive = true
        smallGrayLine1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    func addSocialButtonsSV(){
        mainStackView.addArrangedSubview(socialButtonsSV)
    }
    
    func addGoogleButton(){
        socialButtonsSV.addArrangedSubview(useGoogleButton)
        useGoogleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        useGoogleButton.addTarget(self, action: #selector(googleButtonTouchedUp(_:)), for: .touchUpInside)
        useGoogleButton.addTarget(self, action: #selector(googleButtonTouchedDown(_:)), for: .touchDown)
    }
    
    func addFBButton(){
        socialButtonsSV.addArrangedSubview(useFacebookButton)
        useFacebookButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        useFacebookButton.addTarget(self, action: #selector(facebookButtonTouchedUp(_:)), for: .touchUpInside)
        useFacebookButton.addTarget(self, action: #selector(facebookButtonTouchedDown(_:)), for: .touchDown)
    }
    
    func makeRed(field: UITextField){
        field.layer.borderColor = UIColor.red.cgColor
        field.layer.borderWidth = 1
        field.layer.cornerRadius = 5
    }
    
    func makeGray(field: UITextField){
        field.layer.cornerRadius = 5
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
    @objc func facebookButtonTouchedUp(_ sender: UIButton) {
        useFacebookButton.layer.opacity = 1
    }
    
    @objc func facebookButtonTouchedDown(_ sender: UIButton) {
        useFacebookButton.layer.opacity = 0.5
    }
    
    @objc func googleButtonTouchedUp(_ sender: UIButton) {
        useGoogleButton.layer.opacity = 1
    }
    
    @objc func googleButtonTouchedDown(_ sender: UIButton) {
        useGoogleButton.layer.opacity = 0.5
    }
    
    @objc func loginButtonTouchedUp(_ sender: UIButton) {
        
        let mail = mailInputField.text ?? ""
        let name = fullNameInputField.text ?? ""
        let password = passwordInputField.text ?? ""
        var authorization = 0 //იზი დალოგინება მაქ გაკეთებული თორე ვიცი რომ ასე არაა სწორი :დ ვალიდაციებს თუ გახვალ დალოგინდები
        
        let regexPatern =  "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)])"
        
        let regex = try! NSRegularExpression(pattern: regexPatern)
        let range = NSRange(location: 0, length: mail.utf16.count)
        
        if (regex.firstMatch(in: mail, options: [], range: range) != nil) == true {
            makeGray(field: mailInputField)
            authorization += 1
        } else {
            makeRed(field: mailInputField)
            authorization = 0
        }
        
        if name.count > 0 {
            makeGray(field: fullNameInputField)
            authorization += 1
        } else {
            makeRed(field: fullNameInputField)
            authorization = 0
        }
        
        if  6...15 ~= password.count{
            makeGray(field: passwordInputField)
            authorization += 1
        } else {
            makeRed(field: passwordInputField)
            authorization = 0
        }
        
        if authorization == 3 {
            let dashboardVC = DashboardViewController()
            self.present(dashboardVC, animated: true)
        }
        
        loginButton.layer.opacity = 1
    }
    @objc func loginButtonTouchedDown(_ sender: UIButton) {
        loginButton.layer.opacity = 0.5
    }
    
}

#Preview{
    LoginViewController()
}


