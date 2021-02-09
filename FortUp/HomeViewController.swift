//
//  AppDelegate.swift
//  FortUp 0.2
//
//  Created by Никита Степанов on 11/18/20.
//


import UIKit
import WebKit

class HomeViewController: UIViewController, WKNavigationDelegate{

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        let webConfiguration = WKWebViewConfiguration()
                webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
    }
    
  
    
    let transiton = SlideInTransition()
    var topView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://c1b-wylk.com/register/")!
        webView.load(URLRequest(url: url))
       
    }

    /*  @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
        menuViewController.didTapMenuType = { menuType in
            self.transitionToNew(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }

    func transitionToNew(_ menuType: MenuType) {
        

        topView?.removeFromSuperview()
        switch menuType {
        case .vebinars:
            self.title = "Вебинары"
            let url = URL(string: "https://fortup.ru/vebinar")!
            webView.load(URLRequest(url: url))
        case .news:
            self.title = "Новости"
            let url = URL(string: "https://fortup.ru/news")!
            webView.load(URLRequest(url: url))
        case .home:
            self.title = "Главная"
            let url = URL(string: "https://fortup.ru")!
            webView.load(URLRequest(url: url))
            
     
            break
        }
    }

}

extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = true
        return transiton
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = false
        return transiton
    }
}
*/
