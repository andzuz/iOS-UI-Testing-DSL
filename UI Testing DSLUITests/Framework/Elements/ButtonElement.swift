import XCTest

class ButtonElement: UIElement {
    
    @discardableResult
    func tap() -> ButtonElement {
        element.tap()
        return self
    }
    
}
