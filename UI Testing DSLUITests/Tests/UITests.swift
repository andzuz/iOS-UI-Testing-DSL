import XCTest

class UITests: XCTestCase {
    
    private lazy var app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launchArguments = ["ui-testing"]
        app.launch()
    }
    
    func testMeeehSoMuchBoilerplate() {
        let firstScreenPrefix = "FirstViewController"
        let firstScreen = (
            titleLabel: app.staticTexts["\(firstScreenPrefix).titleLabel"].firstMatch,
            subtitleLabel: app.staticTexts["\(firstScreenPrefix).subtitleLabel"].firstMatch,
            proceedButton: app.buttons["\(firstScreenPrefix).proceedButton"])
        
        XCTAssertEqual(firstScreen.titleLabel.label, "Hello Cocoaheads!")
        XCTAssertEqual(firstScreen.subtitleLabel.label, "How u doin?")
        firstScreen.proceedButton.tap()
        
        let secondScreenTitleLabel = app.staticTexts["SecondViewController.titleLabel"].firstMatch
        
        XCTAssertTrue(secondScreenTitleLabel.exists)
        XCTAssertEqual(secondScreenTitleLabel.label, "Aaand we're on the second screen")
    }
    
    func testWithSyntaxCoolAsHell() {
        FirstScreen.screen {
            $0.titleLabel { $0.hasText("Hello Cocoaheads!") }
            $0.subtitleLabel { $0.hasText("How u doin?") }
            $0.proceedButton { $0.tap() }
        }
        
        SecondScreen.screen {
            $0.titleLabel { $0.hasText("Aaand we're on the second screen") }
        }
    }
    
}
