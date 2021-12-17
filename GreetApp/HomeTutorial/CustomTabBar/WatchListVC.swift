//
//  WatchListVC.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

struct Question {
    var questionString: String?
    var answers: [String]?
    var selectedAnswerIndex: Int?
}

var questionsList: [Question] =  [Question(questionString: "What is your favorite type of food?", answers: ["Sandwhiches", "Pizza", "Seafood", "Unagi", "Mexican", "Salad", "Cheesesteaks"], selectedAnswerIndex: nil), Question(questionString: "What type of Vegatables do you like?", answers: ["Pickles", "Tomatos", "Onions"], selectedAnswerIndex: nil), Question(questionString: "Are you a Vegan", answers: ["Yes", "No"], selectedAnswerIndex: nil)]

class WatchListVC: UITableViewController {
    
    let cellId = "cellId"
    let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
////        this codes hides the navigation
//        navigationController?.hideNavigationItemBackground()
        
//        UINavigationBar.appearance().barTintColor = UIColor.soothingBlue

        
        view.backgroundColor = .green
        navigationItem.title = "WatchList"
        //        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.tintColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellId)
        tableView.register(QuestionHeader.self, forHeaderFooterViewReuseIdentifier: headerId)
        
//        tableView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
//        tableView.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        
        tableView.sectionHeaderHeight = 50
        tableView.tableFooterView = UIView()
        
        tableView.isScrollEnabled = false
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //        return 5
        
        if let index = navigationController?.viewControllers.firstIndex(of: self) {
            let question = questionsList[index]
            if let count = question.answers?.count {
                return count
            }
            
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AnswerCell
        
        if let index = navigationController?.viewControllers.firstIndex(of: self) {
            let question = questionsList[index]
            cell.nameLabel.text = question.answers?[indexPath.row]
            
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        CGFloat(floatLiteral: 50)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! QuestionHeader
        
        if let index = navigationController?.viewControllers.firstIndex(of: self) {
            let question = questionsList[index]
            header.nameLabel.text = question.questionString
            
        }
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let index = navigationController?.viewControllers.firstIndex(of: self) {
            questionsList[index].selectedAnswerIndex = indexPath.item
            
            if index < questionsList.count - 1 {
                let questionHeader =  WatchListVC()
                navigationController?.pushViewController(questionHeader, animated: true)
                
            } else {
                
                let controller = ResultsController()
                
                navigationController?.pushViewController(controller, animated: true)
            }
            
        }
        
    }
}


class ResultsController: UIViewController {
    
    let resultsLabel: UILabel = {
        let label = UILabel()
        label.text = "Congratulation, you selected"
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let resultImageView: UIImageView = {
        let rIv = UIImageView()
        //        rIv.backgroundColor = UIColor.red
        rIv.image = UIImage(named: "Tacos1" )
        rIv.layer.cornerRadius = 22
        rIv.layer.masksToBounds = true
        //        rIv.contentMode = .scaleAspectFit
        rIv.translatesAutoresizingMaskIntoConstraints = false
        return rIv
    }()
    
    let rPurchaseButton: UIButton = {
        let rpButton = UIButton(type: .system)
        rpButton.backgroundColor = UIColor.green
        rpButton.setTitleColor(UIColor.black, for: .normal)
        rpButton.setTitle("PURCHASE", for: .normal)
        rpButton.translatesAutoresizingMaskIntoConstraints = false
        //              rpButton.addTarget(self, action: #selector(fPButtonAction1), for: .touchUpInside)
        return rpButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.done))
        
        navigationItem.title = "Results"
        
        view.backgroundColor = .soothingPurple
        
        view.addSubview(resultsLabel)
        view.addSubview(resultImageView)
        
        view.addConstraintsWithFormat(format: "H:|[v0]|", view: resultsLabel)
        view.addConstraintsWithFormat(format: "V:|[v0]-400-|", view: resultsLabel)
        
        view.addConstraintsWithFormat(format: "H:|-80-[v0]-80-|", view: resultImageView)
        view.addConstraintsWithFormat(format: "V:|-300-[v0]-300-|", view: resultImageView)
        
        let names = ["Kevin", "Norbert", "Jose", "Casandra", "BOOK", "ICONS", "LAUNCH"]
        
        let items = ["Sopes1", "Tacos1", "Chilaquiles1", "Chilereneno1", "Pozole1", "step-4", "Step-5"]
        
        var score = 0
        for question in questionsList {
            score += question.selectedAnswerIndex!
        }
        
        let result = names[score % names.count]
        
        resultsLabel.text = "Congratulation, you selected \(result)!"
        
        let item = items[score % items.count]
        
        resultImageView.image = UIImage(named: item)
        
        //        print(question?.selectedAnswerIndex)
        
        view.addSubview(rPurchaseButton)
        
        NSLayoutConstraint.activate([
            rPurchaseButton.topAnchor.constraint(equalTo: resultImageView.bottomAnchor, constant: 15),
            rPurchaseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rPurchaseButton.widthAnchor.constraint(equalToConstant: 150),
            rPurchaseButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        self.rPurchaseButton.addTarget(self, action: #selector(self.tButtonAction1), for: .touchUpInside)
        
    }
    
    @objc fileprivate func tButtonAction1(_ sender: UIButton) {
        
        print("this is my tButtonAction1")
        
        //UIViewController
        let pastOrdersController = PastOrdersVC()
        navigationController?.pushViewController(pastOrdersController, animated: true)
//        navigationController?.setNavigationBarHidden(true, animated: true)
        
//        //UICollectionView
//        let layout = UICollectionViewFlowLayout()
//         //        let favoriteController = DemoViewController(collectionViewLayout: UICollectionViewFlowLayout())
//         let pastOrdersController = PastOrdersVC(collectionViewLayout: layout)
//         navigationController?.pushViewController(pastOrdersController, animated: true)

    }
    
    @objc fileprivate func done() {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}

class QuestionHeader: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Question"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    func setupViews() {
        
        addSubview(nameLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]|", view: nameLabel)
        addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class AnswerCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Answer"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    func setupViews() {
        
        addSubview(nameLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]|", view: nameLabel)
        addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
    }
    
}

