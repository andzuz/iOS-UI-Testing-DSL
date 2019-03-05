import XCTest

class LabelElement: UIElement {
    
    func hasText(_ text: String,
                 file: StaticString = #file,
                 line: UInt = #line) {
        XCTAssertEqual(element.label, text, file: file, line: line)
    }
    
}

