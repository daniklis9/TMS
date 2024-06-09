//
//  ViewController.swift
//  HomeWork2
//
//  Created by Даниил on 2024/06/09.
//

import UIKit

enum Weekday: String {
    case monday = "понедельник"
    case tuesday = "вторник"
    case wednesday = "среда"
    case thursday = "четверг"
    case friday = "пятница"
    case saturday = "суббота"
    case sunday = "воскресенье"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var checkDayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }

    @IBAction func checkDayButtonTapped(_ sender: UIButton) {
        counterLabel.textColor = setDays() == "Ошибка" ? .red : .black
        counterLabel.text = setDays()
    }
    
    private func setDays() -> String {
        if dayTextField.text == "" || dayTextField.text == nil {
            counterLabel.text = "Ошибка"
        } else if dayTextField.text?.lowercased() == Weekday.monday.rawValue {
            return "5"
        } else if dayTextField.text?.lowercased() == Weekday.tuesday.rawValue {
            return "4"
        } else if dayTextField.text?.lowercased() == Weekday.wednesday.rawValue {
            return "3"
        } else if dayTextField.text?.lowercased() == Weekday.thursday.rawValue {
            return "2"
        } else if dayTextField.text?.lowercased() == Weekday.friday.rawValue {
            return "1"
        } else if dayTextField.text?.lowercased() == Weekday.saturday.rawValue {
            return "7"
        } else if dayTextField.text?.lowercased() == Weekday.sunday.rawValue {
            return "6"
        } else {
            return "Ошибка"
        }
        return ""
    }
    
    private func setupButton() {
        checkDayButton.setTitle("Проверить", for: .normal)
        checkDayButton.setTitleColor(.white, for: .normal)
        checkDayButton.layer.cornerRadius = 10
    }
}
