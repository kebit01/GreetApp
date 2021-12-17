//
//  AccountSettingsController.swift
//  GreetApp
//
//  Created by Kevin Ortiz on 12/16/21.
//

import UIKit

class AccountSettingsController: UITableViewController {
    
    let cellId = "cellId"
    let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
                        
        view.backgroundColor = .purple
        
        navigationController?.navigationBar.tintColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        tableView.register(AccountCell.self, forCellReuseIdentifier: cellId)
        
        tableView.sectionHeaderHeight = 50
        tableView.tableFooterView = UIView()
        
        tableView.isScrollEnabled = false
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
//        return 2
        return AccountSection.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        return 5
        
        guard let section = AccountSection(rawValue: section) else { return 0 }
        
        switch section {
        case .Social: return SocialOptions.allCases.count
        case .Communications: return CommunicationOptions.allCases.count
        }

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AccountCell
        
        guard let section = AccountSection(rawValue: indexPath.section) else { return UITableViewCell() }
            
            switch section {
            case .Social:
                let social = SocialOptions(rawValue: indexPath.row)
//                cell.textLabel?.text = social?.description
                cell.sectionType = social
            case .Communications:
                let communications = CommunicationOptions(rawValue: indexPath.row)
//                cell.textLabel?.text = communications?.description
                cell.sectionType = communications

            }
        
            return cell
    }
    

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 40
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        CGFloat(floatLiteral: 50)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId)
            
//        return header
        
        print("Section is \(section)")
        
        let view = UIView()
        
        view.backgroundColor = .mainPink
    
        let title = UILabel()
        title.text = AccountSection(rawValue: section)?.description
        title.textColor = .white
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(title)
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        
        return view

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let section = AccountSection(rawValue: indexPath.section) else { return }
        
        switch section {
        case .Social:
            print(SocialOptions(rawValue: indexPath.row)?.description)
        case .Communications:
            print(CommunicationOptions(rawValue: indexPath.row)?.description)
            
        }
    }
    
}

//class AccountHeader: UITableViewHeaderFooterView {
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
////        setupViews()
//    }
//
////    let nameLabel: UILabel = {
////        let label = UILabel()
////        label.text = AccountSection(rawValue: section)?.description
////        label.translatesAutoresizingMaskIntoConstraints = false
////        label.font = UIFont.boldSystemFont(ofSize: 16)
////        return label
////    }()
//
////        func setupViews() {
////
////            addSubview(nameLabel)
////                  addConstraintsWithFormat(format: "H:|-16-[v0]|", view: nameLabel)
////                  addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
////        }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}

class AccountCell: UITableViewCell {
    
    var sectionType: SectionType? {
        didSet {
            guard let sectionType = sectionType else { return }
            textLabel?.text = sectionType.description
            switchControl.isHidden = !sectionType.containsSwitch
        }
    }
    
    lazy var switchControl: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.onTintColor = .blue
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        switchControl.addTarget(self, action: #selector(handleSwitchAction), for: .valueChanged)
        return switchControl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupViews()
        
        addSubview(switchControl)
        switchControl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        switchControl.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleSwitchAction(sender: UISwitch) {
        if sender.isOn {
            print("Turned On")
        } else {
            print("Turned off")
        }
    }
//
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Sample Answer"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = UIFont.systemFont(ofSize: 14)
//        return label
//    }()
    
//    func setupViews() {
//
//        addSubview(nameLabel)
//              addConstraintsWithFormat(format: "H:|-16-[v0]|", view: nameLabel)
//              addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
//    }
    
}


