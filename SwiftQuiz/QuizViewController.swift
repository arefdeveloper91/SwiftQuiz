//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by aref on 5/8/24.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var btAnsewrs: [UIButton]!
    
    
    let quizManager = QuizManager ()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear) {
            self.viTimer.frame.size.width = 0
        } completion: { (sucesso) in
            self.showResultado()
        }
          getNewQuiz()
    }
        
    func getNewQuiz (){
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        for i in 0..<quizManager.option.count {
            let options = quizManager.option [i]
            let botton = btAnsewrs [i]
            botton.setTitle(options, for: .normal)
            
        }
    }
        
    func showResultado (){
        performSegue(withIdentifier: "resultSegue", sender: nil)
        
    }
    override func prepare(for segue : UIStoryboardSegue, sender:Any?){
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.totalAnswers = quizManager.totalResposta
        resultViewController.totalCorrectAnswers = quizManager.totalCorretas
    }
    
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        
        let index = btAnsewrs.index(of: sender)!
        quizManager.validateResposta(index: index)
        getNewQuiz()
    }
    

   
}
