//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by MinKyeongTae on 2022/10/10.
//

// MARK: - Section 12: Unit Testing
// MARK: 74. Settinig Up Your Project
// Tests 파일에서 테스트코드를 작성하여 Unit Test를 할 수 있다.
// MARK: 75. Writing Your  First Unit Test
// "test_" 를 테스트 함수 앞에 붙히면 테스트 가능 버튼이 좌측에 나타난다.
// MARK: 76. Refactoring Unit Tests
// setUp 메서드에서 미리 프로퍼티를 셋팅 후, unit test를 할 수 있다.
import XCTest

class CalculatorAppTests: XCTestCase {
  
  private var calculator: Calculator!
  
  // setUp 메서드에서 미리 프로퍼티를 셋팅 후, unit test를 할 수 있다.
  override func setUp() {
    super.setUp()
    self.calculator  = Calculator()
  }
  
  // 매번의 test가 끝난 후 tearDown에서 프로퍼티를 알맞게 재 셋팅을 할 수 있다.
  override func tearDown() {
    super.tearDown()
  }

  func test_AddTwoNumbers() {
    let result = calculator.add(2, 3)
    // XCTAssetEqual을 사용하여 결과값과 예상값이 같은지 확인, 다르면 에러가 발생한다.
    XCTAssertEqual(result, 5)
  }
  
  func test_SubtractNumbers() {
    let result = calculator.subtract(3, 1)
    // test가 실패할 경우 경고문구가 나온다.
    // ex) XCTAssertEqual failed: ("2") is not equal to ("-1")
    XCTAssertEqual(result, 2)
  }
}
