//
//  ViewController.swift
//  codepath
//
//  Created by Yasmeen Hussein on 12/22/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TimerButton: UITextField!
    var timer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    
    @IBAction func Timer(_ sender: UIButton) {
        timer += 1
        TimerButton.text = "Timer: \(timer)"
        TimerButton.font = UIFont(name: "Georgia", size: 20)

        if timer % 5 == 0 {
            // Change the text color to a random color when the timer is a multiple of 5
            TimerButton.textColor = randomColor()
        } else {
            // Reset the text color to black when not a multiple of 5
            TimerButton.textColor = .black
        }
    }

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
