import XCTest

protocol Screen {
    
    var app: XCUIApplication { get }
    
    init()
    static func screen(_ closure: (Self) -> (Void))
    
}

extension Screen {
    
    static func screen(_ closure: (Self) -> (Void)) {
        closure(self.init())
    }
    
}
