@testable import BuildSettingInjection
import XCTest

class BuildSettingInjectionTests: XCTestCase {

    func testReadingParameterFromBuildSetting() throws {
        let bundle = Bundle(for: ClassFromMainBundle.self)
        // Alternatively:
        // let bundle = Bundle.main

        // For this to pass you need:
        //
        // - A user-defined build setting named CUSTOM_BUILD_SETTING
        //   (See BuildSettingInjection target overview > Build Settings > Scroll to bottom.
        //   To add a new one, select the "+" button (opposite the search bar in that screen)
        // - A parameter in the Info.plist that reads it (see Info.plist)
        let buildSetting = try XCTUnwrap(bundle.infoDictionary?["CUSTOM_BUILD_SETTING"] as? String)

        // If run from Xcode, this test should fail with:
        //
        // > XCTAssertEqual failed: ("tomato") is not equal to ("bazinga")
        XCTAssertEqual(buildSetting, "bazinga")
    }
}
