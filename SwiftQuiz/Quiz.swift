//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by aref on 5/8/24.
//

import Foundation

class Quiz {
    
    let question : String
    let option : [String]
   private  let respostaCorreta : String
    
    init(question: String, option: [String], respostaCorreta: String) {
        self.question = question
        self.option = option
        self.respostaCorreta = respostaCorreta
    }
    func validadeOption ( _ index : Int) -> Bool {
        let resposta = option [index]
        return resposta == respostaCorreta
    }
    deinit{
        print ("liberou o quiz da memoria")
    }
}
