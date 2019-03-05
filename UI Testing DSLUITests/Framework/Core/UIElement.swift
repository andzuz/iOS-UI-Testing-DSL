import XCTest

class UIElement {
    
    let element: XCUIElement
    
    init(with uiElement: XCUIElement) {
        self.element = uiElement
        isDisplayed()
    }
    
    func isDisplayed() {
        guard element.exists else {
            XCTAssertTrue(element.waitForExistence(timeout: 2))
            return
        }
    }
    
}
