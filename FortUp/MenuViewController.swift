//
//  AppDelegate.swift
//  FortUp 0.2
//
//  Created by Никита Степанов on 11/18/20.
//


import UIKit

enum MenuType: Int {
    case home
    case news
    case vebinars
}

class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
    }
}
