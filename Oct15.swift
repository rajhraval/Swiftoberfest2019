import UIKit
import XCTest

struct UserViewModel {
    let users: [String]
    
    var hasUsers: Bool {
        return !users.isEmpty
    }
}

final class UserViewModelTests: XCTest {
    func testHasUsers() {
        let viewModel = UserViewModel(users: ["Bob", "Paul"])
        XCTAssertTrue(viewModel.hasUsers)
    }
    
    func testFirstNameNotEmpty() throws {
        let viewModel = UserViewModel(users: ["Ringo", "Fall"])
        let firstName = try XCTUnwrap(viewModel.users.first)
    }
}

let userModelTest = UserViewModelTests()
userModelTest.testHasUsers()
try? userModelTest.testFirstNameNotEmpty()

