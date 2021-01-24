To verify that you can inject a build setting to `xcodebuild` to override a setting in the codebase, run:

```
xcodebuild \
  -project BuildSettingInjection.xcodeproj/ \
  -scheme BuildSettingInjection \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 12 Pro,OS=14.3' \
  CUSTOM_BUILD_SETTING=bazinga \
  test
```

Look into `BuildSettingInjectionTests/ExampleTest.swift` to see how to read a value from the build settings.

---

If you want to run the app from Xcode with this special build setting, you should create a new build configuration and set it for it.

This approach is useful to create flavors of the same app that run the same code but use different endpoints, API keys for third party SDKs, or icons – an excellent way to build a beta version of the app with minimum code changes.
