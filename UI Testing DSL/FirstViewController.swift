import UIKit

class FirstViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello Cocoaheads!"
        lbl.textColor = .orange
        lbl.font = UIFont.boldSystemFont(ofSize: 50)
        lbl.accessibilityIdentifier = "FirstViewController.titleLabel"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "How u doin?"
        lbl.textColor = UIColor.orange.withAlphaComponent(0.7)
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        lbl.accessibilityIdentifier = "FirstViewController.subtitleLabel"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private lazy var proceedButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("PROCEED", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .orange
        btn.setTitleColor(UIColor.brown, for: .highlighted)
        btn.accessibilityIdentifier = "FirstViewController.proceedButton"
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        view.addSubview(proceedButton)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            proceedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            proceedButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            proceedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            proceedButton.heightAnchor.constraint(equalToConstant: 100)
            ])
        
        proceedButton.addTarget(self, action: #selector(proceedButtonTapped), for: .touchUpInside)
    }
    
    @objc private func proceedButtonTapped() {
        present(SecondViewController(), animated: true)
    }
    
}

