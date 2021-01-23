@testable import BuildSettingInjection
import XCTest

class BuildSettingInjectionTests: XCTestCase {

    func testReadingParameterFromBuildSetting() throws {
        let bundle = Bundle(for: ClassFromMainBundle.self)
        // Alternatively:
        // let bundle = Bundle.main
        let buildSetting = try XCTUnwrap(bundle.infoDictionary?["CUSTOM_BUILD_SETTING"] as? String)

        // If run from Xcode, this test should fail with:
        //
        // > XCTAssertEqual failed: ("tomato") is not equal to ("bazinga")
        XCTAssertEqual(buildSetting, "bazinga")
    }
}
