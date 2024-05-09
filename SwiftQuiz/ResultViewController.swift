//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by aref on 5/8/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbRespondidas: UILabel!
    @IBOutlet weak var lbCorretas: UILabel!
    @IBOutlet weak var lbErradas: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers : Int = 0
    var totalAnswers : Int = 0 
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbRespondidas.text = "respondidas : \(totalAnswers)"
        lbCorretas.text = "corretas : \(totalCorrectAnswers)"
        lbErradas.text = "erradas : \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
        
        
    }
    
    @IBAction func btClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
   

}
