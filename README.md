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
