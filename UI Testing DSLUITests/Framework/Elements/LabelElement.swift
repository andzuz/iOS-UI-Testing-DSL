import XCTest

class LabelElement: UIElement {
    
    @discardableResult
    func hasText(_ text: String,
                 file: StaticString = #file,
                 line: UInt = #line) -> LabelElement {
        XCTAssertEqual(element.label, text, file: file, line: line)
        return self
    }
    
    @discardableResult
    func containsText(_ text: String,
                      file: StaticString = #file,
                      line: UInt = #line) -> LabelElement {
        XCTAssertTrue(element.label.contains(text), file: file, line: line)
        return self
    }
    
}

