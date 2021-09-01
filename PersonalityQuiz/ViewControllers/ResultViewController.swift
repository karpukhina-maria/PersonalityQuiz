//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated:true)
        
        guard let result = getResult() else { return }
        resultLabel.text = "Вы - \(result.rawValue)"
        definitionLabel.text = result.definition
    }
    
    private func getResult() -> Animal? {
        var result: Animal? = nil
        let dictionaryWithResults: [Animal : Int]  = [.cat : answersChosen.filter { $0.animal == .cat }.count,
                                                      .dog : answersChosen.filter { $0.animal == .dog }.count,
                                                      .turtle : answersChosen.filter { $0.animal == .turtle }.count,
                                                      .rabbit : answersChosen.filter { $0.animal == .rabbit }.count]
        
        let dictionaryWithResultsSorted = dictionaryWithResults.sorted(by: {$0.value > $1.value})
        if let first = dictionaryWithResultsSorted.first  {
            result = first.key
        }
        return result
    }
}
