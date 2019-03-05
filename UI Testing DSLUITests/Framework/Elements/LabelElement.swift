import XCTest

class LabelElement: UIElement {
    
    func hasText(_ text: String) {
        XCTAssertEqual(element.label, text)
    }
    
}
