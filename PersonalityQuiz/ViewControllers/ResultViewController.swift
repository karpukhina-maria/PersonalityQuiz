//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answersChosen: [Answer]!
    var result: Animal?

    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответствии с этим животным
    // 4. Избавиться от кнопки возврата на предыдущий экран

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
        
//        func getResult() -> Animal? {
//            let dictionaryWithResults: [Animal : Int]  = [.cat : answersChosen.filter { $0.animal == .cat }.count,
//                                                          .dog : answersChosen.filter { $0.animal == .dog }.count,
//                                                          .turtle : answersChosen.filter { $0.animal == .turtle }.count,
//                                                          .rabbit : answersChosen.filter { $0.animal == .rabbit }.count]
//
//            let dictionaryWithResultsSorted = dictionaryWithResults.sorted(by: {$0.value > $1.value})
//            if let first = dictionaryWithResultsSorted.first  {
//                result = first.key
//            }
//            return result
//        }
        
    
}
