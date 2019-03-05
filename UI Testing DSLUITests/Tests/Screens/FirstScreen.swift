import XCTest

final class FirstScreen: Screen {
    
    internal var app: XCUIApplication = XCUIApplication()
    
    lazy var titleLabel: LabelElement = {
        LabelElement(with: app.staticTexts["FirstViewController.titleLabel"])
    }()
    
    lazy var subtitleLabel: LabelElement = {
        LabelElement(with: app.staticTexts["FirstViewController.subtitleLabel"])
    }()
    
    lazy var proceedButton: ButtonElement = {
        ButtonElement(with: app.buttons["FirstViewController.proceedButton"])
    }()
    
}
