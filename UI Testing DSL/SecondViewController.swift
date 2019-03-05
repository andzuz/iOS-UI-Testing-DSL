import UIKit

class SecondViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Aaand we're on the second screen"
        lbl.textColor = .orange
        lbl.font = UIFont.boldSystemFont(ofSize: 50)
        lbl.accessibilityIdentifier = "SecondViewController.titleLabel"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        titleLabel.alpha = 0.0
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5) { [weak self] in
            self?.titleLabel.alpha = 1.0
        }
    }
    
}
