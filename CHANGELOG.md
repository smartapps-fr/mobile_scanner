## 5.1.0
This updates reverts a few breaking changes made in v5.0.0 in order to keep things simple.

* The `onDetect` method has been reinstated in the `MobileScanner` widget, but is nullable. You can
still listen to `MobileScannerController.barcodes` directly by passing null to this parameter.
* The `autoStart` attribute has been reinstated in the `MobileScannerController` and defaults to true. However, if you want
to control which camera is used on start, or you want to manage the lifecycle yourself, you should set
autoStart to false and manually call `MobileScannerController.start({CameraFacing? cameraDirection})`.
* The `controller` is no longer required in the `MobileScanner` widget. However if provided, the user should take care 
of disposing it.
* [Android] Revert Gradle 8 back to Gradle 7, to be inline with most Flutter plugins and prevent build issues.
* [Android] Revert Kotlin back from 1.9 to 1.7 to be inline with most Flutter plugins. Special 1.9 functionality
has been refactored to be compatible with 1.7.


## 1.0.0 (2026-01-05)


### Features

* 5.0.0-beta 3 ([72b0335](https://github.com/smartapps-fr/mobile_scanner/commit/72b03354cc282a367d610e04f82428cfbfffeb45))
* add available camera information in startcallback on android ([133f5c2](https://github.com/smartapps-fr/mobile_scanner/commit/133f5c23d95ca5b3759f59a5e0eaf50ac61a7395))
* add new resolution selector with parameter for android ([240a374](https://github.com/smartapps-fr/mobile_scanner/commit/240a374851034ff00e4702a1795ce48dc20efd20))
* Add proguard file to plugin ([1415640](https://github.com/smartapps-fr/mobile_scanner/commit/141564002f7f425c3f8032ef2a810a2c7c7e5752))
* Added screenshots to pubspec.yaml ([2f6cba0](https://github.com/smartapps-fr/mobile_scanner/commit/2f6cba02b1f4b7f9849152bf8ac53274dac219eb))
* Barcode class fixes ([ffd0c02](https://github.com/smartapps-fr/mobile_scanner/commit/ffd0c02cd9444d8760b09df930dfe8a8917de104))
* Bump version to 3.5.3 ([9835ade](https://github.com/smartapps-fr/mobile_scanner/commit/9835adeceaa142381fe9cbba2ac32f6a386b8dea))
* change platform os detect pattern ([c113dff](https://github.com/smartapps-fr/mobile_scanner/commit/c113dffbe55035f9afae1edbab1830787b255756))
* change platform os detect pattern in barcode_scanner_window.dart ([bf495be](https://github.com/smartapps-fr/mobile_scanner/commit/bf495be9510eb60076734a618b92d1e7dab81d4e))
* Mobile scanner platform interface ([ad68fda](https://github.com/smartapps-fr/mobile_scanner/commit/ad68fda9a8d8730f8cde94bd2c2719a0a0217854))
* Move classes into their own files ([cabebb0](https://github.com/smartapps-fr/mobile_scanner/commit/cabebb0204cd83b1955d39ad1c41679e4841edfc))
* Prepare changelog for version 3.5.2 ([eaf10b1](https://github.com/smartapps-fr/mobile_scanner/commit/eaf10b13352e0b9f7da78e049a79fb612da834ac))
* Release 3.5.5 ([3fe3f57](https://github.com/smartapps-fr/mobile_scanner/commit/3fe3f57357f9b42c7661907619e9f46db8ce5523))
* Release 5.0.0 ([8c87026](https://github.com/smartapps-fr/mobile_scanner/commit/8c87026a00ab38ca116cb1f51f0ed145738cd2c9))
* Release v3.5.1 ([da34970](https://github.com/smartapps-fr/mobile_scanner/commit/da34970567a64fdf66a7df23963a40bc215d9d18))
* Remove unused barcode utility helpers ([7fc14e7](https://github.com/smartapps-fr/mobile_scanner/commit/7fc14e7558f9aa160f3c8f2188c909cc13a978a0))
* Reorganise enums ([6f8cd46](https://github.com/smartapps-fr/mobile_scanner/commit/6f8cd46ab63466655f8930d62b7f1392344e9152))
* Unit tests for enhanced enums ([cb842e6](https://github.com/smartapps-fr/mobile_scanner/commit/cb842e60fe8d47620c824d9746e9f45552b97773))
* Update CHANGELOG.md for version 5.0.1 ([2899853](https://github.com/smartapps-fr/mobile_scanner/commit/289985393d1b58d42f8fadb61b1a8cd1937253e1))
* Update extension type ([f31b03d](https://github.com/smartapps-fr/mobile_scanner/commit/f31b03dcfb46ff4610f9c4941fe1d266a44cf200))
* Update pubspec.yaml for version 5.0.1 ([2a6c7d5](https://github.com/smartapps-fr/mobile_scanner/commit/2a6c7d569c3ff17d37e95679553605fabe77464d))


### Bug Fixes

* error with returning image on android ([45b027a](https://github.com/smartapps-fr/mobile_scanner/commit/45b027a57c316a640f1018b888b5436088545e8b))
* fix a cast from a bad conversion ([17ee8cb](https://github.com/smartapps-fr/mobile_scanner/commit/17ee8cbcaa0fa0b52828233dae68e55b818e0cc5))
* Fix android permission bug ([54fb81b](https://github.com/smartapps-fr/mobile_scanner/commit/54fb81b79027a8b09dd871db12a62e6baae0fd33))
* Fix conversion crash in iOS ([efc05b4](https://github.com/smartapps-fr/mobile_scanner/commit/efc05b4415a542190d040e7dddf8bec04dc4ceb9))
* Fix ios torch crash ([7f5b6db](https://github.com/smartapps-fr/mobile_scanner/commit/7f5b6db123123ddbee2e168a2d1df822d87a47c1))
* Fix nil capture session crash on iOS / MacOS ([c9ab22d](https://github.com/smartapps-fr/mobile_scanner/commit/c9ab22df24b9e3b65ac484d763cdef05800b7df7))
* Fix platform messages threading ([31a4ecb](https://github.com/smartapps-fr/mobile_scanner/commit/31a4ecbb909f1a4b8342f924a208e676d1e88619))
* Fix torch state sync issues ([2a8af21](https://github.com/smartapps-fr/mobile_scanner/commit/2a8af212ff95b9ea6e3efc75f05dc8fed762259f))
* fix typo ([663e43a](https://github.com/smartapps-fr/mobile_scanner/commit/663e43a4651c2038acb2e8cb86e93dbec9ad78cf))
* fix typo in `codebar` constant ([eb4e241](https://github.com/smartapps-fr/mobile_scanner/commit/eb4e241a3f2a93a8192bf303ab0aedfec2026b58))
* fix updateScanWindow() not completing on Android and MacOS ([30b037c](https://github.com/smartapps-fr/mobile_scanner/commit/30b037c695178ac1c8f859ab4d4f80d6b443bbd3))
* Handle no cameras on Android ([a0fcedd](https://github.com/smartapps-fr/mobile_scanner/commit/a0fcedd0dec88c809f7bd92737b5c125f904544a))
* iOS Timeout is broken because of Double miss conversion ([f740b3a](https://github.com/smartapps-fr/mobile_scanner/commit/f740b3aaf757b8f1f311f7f2ff425c790f165619))
* lower the Flutter constraint to allow earlier adoption of the beta ([269bc95](https://github.com/smartapps-fr/mobile_scanner/commit/269bc9517f7c71d3bc8f72d4c869447e4db3b4ec))
* missing methods on enums ([40b1bc6](https://github.com/smartapps-fr/mobile_scanner/commit/40b1bc668672a0f0fb74c5decc9f65baf3c89162))
* port scan window update fix to the new beta release ([c3989c4](https://github.com/smartapps-fr/mobile_scanner/commit/c3989c4a76e6722b68f73fd0be535770f548c992))
* provide correct initial torch state ([a71d9ff](https://github.com/smartapps-fr/mobile_scanner/commit/a71d9ff7fa28bf70ecbdb66c9440c9bdcee53b75))
* remove duplicate library ([a59b2b6](https://github.com/smartapps-fr/mobile_scanner/commit/a59b2b61b1a581a13f02bd185ac9b564439b73df))
* Remove redundant breaking change notice for Map&lt;Object?, Object?&gt; change ([b6c1bcd](https://github.com/smartapps-fr/mobile_scanner/commit/b6c1bcda50cea443b63708b19d191a7441bda968))
* resize screenshots for Pub ([c039011](https://github.com/smartapps-fr/mobile_scanner/commit/c0390113068ca706d99ac6275510e21e1016ebfa))
* return type 'int' doesn't allow null for zxingBarcodeFormat method ([4b27980](https://github.com/smartapps-fr/mobile_scanner/commit/4b2798012dc81194750eb4229c3265b12da6b4dd))
* return type 'int' doesn't allow null for zxingBarcodeFormat method ([528feb6](https://github.com/smartapps-fr/mobile_scanner/commit/528feb659b4385bce2c7e5db9898e84ba7923240))
* spamming code detection with "noDuplicates" detection speed on iOS. ([4ab43db](https://github.com/smartapps-fr/mobile_scanner/commit/4ab43db1ee602252b4a03fd6f060c06ac42bd89e))
* typo in zxing.dart ([17d3aed](https://github.com/smartapps-fr/mobile_scanner/commit/17d3aed1b793d5628ffba9fd07337d6e2f25990b))
* Use default selectors instead of a discovery session ([f5c382d](https://github.com/smartapps-fr/mobile_scanner/commit/f5c382d9d30128deab2aa0fc13d22b2633f791aa))
* use rawValue on Android as well for formats ([68330a7](https://github.com/smartapps-fr/mobile_scanner/commit/68330a76a4ce66b592bc234f2e1b8e35358a9264))
* widget-disposed-during-start ([c5e0289](https://github.com/smartapps-fr/mobile_scanner/commit/c5e028905e5bc08814d85c411dce5d911209ff1e))
* with the "noDuplicates" detection speed, the same code is no longer detected after stopping and restarting the scanner. ([4ab43db](https://github.com/smartapps-fr/mobile_scanner/commit/4ab43db1ee602252b4a03fd6f060c06ac42bd89e))
* with the "noDuplicates", the same code is no longer detected after stopping and restarting the scanner ([c1bb1ca](https://github.com/smartapps-fr/mobile_scanner/commit/c1bb1ca7c2510a52b6061748d0b4265f961140d9))

## 5.0.2
Bugs fixed:
* Fixed a crash when the controller is disposed while it is still starting. [#1036](https://github.com/juliansteenbakker/mobile_scanner/pull/1036) (thanks @EArminjon !)
* Fixed an issue that causes the initial torch state to be out of sync.

Improvements:
* Updated the lifeycle code sample to handle not-initialized controllers.

## 5.0.1
Improvements:
* Adjusted the platform checks to use the defaultTargetPlatform API, so that tests can use the correct platform overrides.

## 5.0.0
This major release contains all the changes from the 5.0.0 beta releases, along with the following changes:

Improvements:
- [Android] Remove the Kotlin Standard Library from the dependencies, as it is automatically included in Kotlin 1.4+

## 5.0.0-beta.3
**BREAKING CHANGES:**

* Flutter 3.19.0 is now required.
* [iOS] iOS 12.0 is now the minimum supported iOS version.
* [iOS] Adds a Privacy Manifest.

Bugs fixed:
* Fixed an issue where the camera preview and barcode scanner did not work the second time on web.

Improvements:
* [web] Migrates to extension types. (thanks @koji-1009 !)

## 5.0.0-beta.2
Bugs fixed:
* Fixed an issue where the scan window was not updated when its size was changed. (thanks @navaronbracke !)

## 5.0.0-beta.1
**BREAKING CHANGES:**

* The `width` and `height` of `BarcodeCapture` have been removed, in favor of `size`.
* The `raw` attribute is now `Object?` instead of `dynamic`, so that it participates in type promotion.
* The `MobileScannerArguments` class has been removed from the public API, as it is an internal type.
* The `cameraFacingOverride` named argument for the `start()` method has been renamed to `cameraDirection`.
* The `analyzeImage` function now correctly returns a `BarcodeCapture?` instead of a boolean.
* The `formats` attribute of the `MobileScannerController` is now non-null.
* The `MobileScannerState` enum has been renamed to `MobileScannerAuthorizationState`.
* The various `ValueNotifier`s for the camera state have been removed. Use the `value` of the `MobileScannerController` instead.
* The `hasTorch` getter has been removed. Instead, use the torch state of the controller's value.
  The `TorchState` enum now provides a new value for unavailable flashlights.
* The `autoStart` attribute has been removed from the `MobileScannerController`. The controller should be manually started on-demand.  
* A controller is now required for the `MobileScanner` widget.
* The  `onPermissionSet`, `onStart` and `onScannerStarted` methods have been removed from the `MobileScanner` widget. Instead, await `MobileScannerController.start()`.
* The `startDelay` has been removed from the `MobileScanner` widget. Instead, use a delay between manual starts of one or more controllers.
* The `onDetect` method has been removed from the `MobileScanner` widget. Instead, listen to `MobileScannerController.barcodes` directly.
* The `overlay` widget of the `MobileScanner` has been replaced by a new property, `overlayBuilder`, which provides the constraints for the overlay.
* The torch can no longer be toggled on the web, as this is only available for image tracks and not video tracks. As a result the torch state for the web will always be `TorchState.unavailable`.
* The zoom scale can no longer be modified on the web, as this is only available for image tracks and not video tracks. As a result, the zoom scale will always be `1.0`.

Improvements:
* The `MobileScannerController` is now a ChangeNotifier, with `MobileScannerState` as its model.
* The web implementation now supports alternate URLs for loading the barcode library.

## 4.0.1
Bugs fixed:
* [iOS] Fixed a crash with a nil capture session when starting the camera. (thanks @navaronbracke !)

## 4.0.0
**BREAKING CHANGES:**

* [Android] compileSdk has been upgraded to version 34.
* [Android] Java version has been upgraded to version 17.

## 3.5.7
Improvements:
* Updated js dependency together with other dependencies.
* Reverted compileSdk version to 33 on Android. This update will be released under version 4.0.0.

## 3.5.6
Bugs fixed:
* [web] Fixed a crash with the ZXing barcode format (thanks @hazzo!)
* [web] Fixed stream controller not being closed on web.
* [iOS] Fixed a crash with unsupported torch modes. (thanks @navaronbracke !)
* [iOS] Fixed a crash with the camera discovery session. (thanks @navaronbracke !)

Improvements:
* Upgrade camera dependencies on Android.
* Upgrade compileSdk version to 34 on Android.
* Add numberOfCameras parameter in MobileScannerArguments callback, which shows how many cameras there are available on Android. 
* [Android] Migrated to ResolutionSelector with ResolutionStrategy. You can opt in into the new selector by setting [useNewCameraSelector] in the [MobileScannerController] to true.

## 3.5.5
Bugs fixed:
* Fixed a bug where the scanner would get stuck after denying permissions on Android. (thanks @navaronbracke !)

## 3.5.4
Bugs fixed:
* Fixed a bug with an implicit conversion to integer for the scan timeout for iOS. (thanks @EArminjon !)

## 3.5.2
Improvements:
* Updated to `play-services-mlkit-barcode-scanning` version 18.3.0

Bugs fixed:
* Fixed the `updateScanWindow()` function not completing on Android and MacOS. (thanks @navaronbracke !)
* Fixed some camera access issues, when the camera could have been null on Android. (thanks @navaronbracke !)
* Fixed a crash on Android when there is no camera. (thanks @navaronbracke !)
* Fixed a bug with the `noDuplicates` detection speed. (thanks @pgeof !)
* Fixed a synchronization issue for the torch state. (thanks @navaronbracke !)

## 3.5.1
Improvements:
* The `type` of an `Address` is now non-null.
* The `type` of an `Email` is now non-null.
* The `phoneNumber` of an `SMS` is now non-null.
* The `latitude` and `longitude` of a `GeoPoint` are now non-null.
* The `phones` and `urls` of `ContactInfo` are now non-null.
* The `url` of a `UrlBookmark` is now non-null.
* The `type` of `Phone` is now non-null.
* The `width` and `height` of `BarcodeCapture` are now non-null.
* The `BarcodeCapture` class now exposes a `size`.
* The list of `corners` of a `Barcode` is now non-null.

Bugs fixed:
* Fixed the default values for the `format` and `type` arguments of the Barcode constructor.
  These now use `BarcodeFormat.unknown` and `BarcodeType.unknown`, rather than `BarcodeFormat.ean13` and `BarcodeType.text`.
  (thanks @navaronbracke !)
* Fixed messages not being sent on the main thread for Android, iOS and MacOS. (thanks @navaronbracke !)

## 3.5.0

**NOTE: From this version onwards, `mobile_scanner` requires Android projects to have a `compileSdk` of 34 (Android 14) or higher**

New Features:
* Added the option to switch between bundled and unbundled MLKit for Android. (thanks @woolfred !)
* Added the option to specify the camera resolution for Android. (thanks @EArminjon !)
* Added a sample with a scanner overlay. (thanks @Spyy004 !)

Bugs fixed:
* Fixed the scan window calculation taking into account the widget coordinates, instead of the screen coordinates. (thanks @jlin5 !)
* Fixed the scan window calculation returning wrong results. (thanks @MBulli !)
* Fixed the BarcodeCapture format on MacOS. (thanks @ryanduffyne !)
* Fixed the timeout for scanning on MacOS. (thanks @ryanduffyne !)
* Fixed Android builds failing by downgrading from Kotlin 1.9.10 to 1.7.22. (thanks @vbuberen !)
* Fixed images on iOS being rotated, resulting in bad detection rates. (thanks @EArminjon !)
* Fixed scan timeout not working on iOS. (thanks @navaronbracke !)
* Fixed a crash on iOS when the device is nil. (thanks @navaronbracke !)
* Fixed a case of an unhandled exception when starting the scanner. (thanks @navaronbracke !)

Improvements:
* Improved MacOS memory footprint by using a background queue. (thanks @ryanduffyne !)

## 3.4.1
* Changed MediaQuery.sizeOf(context) to of(context).size for compatibility with older Flutter versions.

## 3.4.0
New Features:
* This PR adds an option to add an overlay to the scanner which is only visible when the scanner has started. (thanks @svenopdehipt !)

Improvements:
* fix a bug in the static interop binding of PhotoCapabilities (thanks @navaronbracke !)
* [Web] add the corners from the ZXing result to the barcode on web (thanks @navaronbracke !)
* update the example app web entrypoint to the latest template by running flutter create . --platforms=web (thanks @navaronbracke !)
* add better handling for the case where scanning barcodes is unsupported (for example a desktop running the browser sample) (thanks @navaronbracke !)
* [Web] fix the permission denied handling on the web, by using the NotAllowedError error message as defined by MDN (thanks @navaronbracke !)
* add app bars with back buttons to the example app (so that you can go back easily) (thanks @navaronbracke !)

* [iOS] Implements a fix from issue iOS After first QR Code Scan, When Scanning again, First Image stays on Camera buffer (thanks @FlockiiX !)

* By dynamically adjusting the positioning and scaling of the scan window relative to the texture, the package ensures optimal coverage and alignment for scanning targets. (thanks @sdkysfzai !)
* In the original package, If there are multiple barcode/qrcodes in the screen, the scan would randomly pick up any barcode/qrcode that shows in the screen, This upgrade fixes it and picks on the qrcode/barcode that is in the center of the camera. (thanks @sdkysfzai !)
* In the original package if you changed the camera size, it would still pick scans even if the barcode are not shown in the screen, This issue is also fixed in the upgraded packaged. (thanks @sdkysfzai !)

* [iOS] This removes a threading warning (and potentially jank). (thanks @ened !)
* [Android] fix(ScanImage): fix android image result is not correct format and orientation (thanks @phanbaohuy96 !)

* [iOS] Respect detectionTimeout on iOS devices, instead of arbitrarily waiting 10 frames (thanks @jorgenpt !)
* [iOS] Don't start a second scan until the first one is done, to keep memory usage more fixed if the device is slow (thanks @jorgenpt !)
* [Android] This PR ensure that the camera is not stopped in the callback. (thanks @g123k !)
* [macOS] Fix some macOS build errors (thanks @svenopdehipt !)

* [Android] Fixed an issue which caused the App Lifecycle States to not work correctly on Android. (thanks @androi7 !)

## 3.3.0
Bugs fixed:
* Fixed bug where onDetect method was being called multiple times
* [Android] Fix Gradle 8 compatibility by adding the `namespace` attribute to the build.gradle.

Improvements:
* [Android] Upgraded camera2 dependency
* Added zoomScale value notifier in MobileScannerController for the application to know the zoom scale value set actually.
  The value is notified from the native SDK(CameraX/AVFoundation).
* Added resetZoomScale() in MobileScannerController to reset zoom ratio with 1x.
  Both Android and iOS, if the device have ultra-wide camera, calling setZoomScale with small value causes to use ultra-wide camera and may be diffcult to detect barcodes.
  resetZoomScale() is useful to use standard camera with zoom 1x.
  setZoomScale() with the specific value can realize same effect, but added resetZoomScale for avoiding floating point errors.
  The application can know what zoom scale value is selected actually by subscribing zoomScale above after calling resetZoomScale.
* [iOS] Call resetZoomScale while starting scan.
  Android camera is initialized with a zoom of 1x, whereas iOS is initialized with the minimum zoom value, which causes to select the ultra-wide camera unintentionally ([iOS] Impossible to focus and scan the QR code due to picking the wide back camera #554).
  Fixed this issue by calling resetZoomScale
* [iOS] Remove zoom animation with ramp function to match Android behavior.

## 3.2.0
Improvements:
* [iOS] Updated GoogleMLKit/BarcodeScanning to 4.0.0 
* [Android] Updated com.google.mlkit:barcode-scanning from 17.0.3 to 17.1.0

Bugs fixed:
* Fixed onDetect not working with analyzeImage when autoStart is false in MobileScannerController
* [iOS] Explicit returned type for compactMap

## 3.1.1
Bugs fixed:
* [iOS] Fixed a bug that caused a crash when switching from camera.

## 3.1.0
Improvements:
* [iOS] No longer automatically focus on faces.
* [iOS] Fixed build error.
* [Web] Waiting for js libs to load.
* Do not returnImage if not specified.
* Added raw data in barcode object.
* Fixed several bugs.

## 3.0.0
This big release contains all improvements from the beta releases.
In addition to that, this release contains:

Improvements:
* Fixed an issue in which the scanner would freeze if two scanner widgets where placed in a page view,
and the paged was swiped. An example has been added in the example app.
You need to set startDelay: true if used in a page view.
* [Web] Automatically inject js libraries.
* [macOS] The minimum build version is now macOS 10.14 in according to the latest Flutter version.
* [Android] Fixed an issue in which the scanWindow would remain even after disposing the scanner.
* Updated dependencies.

## 3.0.0-beta.4
Fixes:
* Fixes a permission bug on Android where denying the permission would cause an infinite loop of permission requests.
* Updates the example app to handle permission errors with the new builder parameter.
  Now it no longer throws uncaught exceptions when the permission is denied.
* Updated several dependencies

Features:
* Added a new `errorBuilder` to the `MobileScanner` widget that can be used to customize the error state of the preview. (Thanks @navaronbracke !) 

## 3.0.0-beta.3
Deprecated:
* The `onStart` method has been renamed to `onScannerStarted`.
* The `onPermissionSet` argument of the `MobileScannerController` is now deprecated.

**BREAKING CHANGES:**

* `MobileScannerException` now uses an `errorCode` instead of a `message`.
* `MobileScannerException` now contains additional details from the original error.
* Refactored `MobileScannerController.start()` to throw `MobileScannerException`s
  with consistent error codes, rather than string messages.
  To handle permission errors, consider catching the result of `MobileScannerController.start()`.
* The `autoResume` attribute has been removed from the `MobileScanner` widget.
  The controller already automatically resumes, so it had no effect.
* Removed `MobileScannerCallback` and `MobileScannerArgumentsCallback` typedef.
* [Web] Replaced `jsqr` library with `zxing-js` for full barcode support.

Improvements:
* Toggling the device torch now does nothing if the device has no torch, rather than throwing an error.
* Removed `called stop while already stopped` messages.

Features:
* You can now provide a `scanWindow` to the `MobileScanner()` widget.
* You can now draw an overlay over the scanned barcode. See the barcode scanner window in the example app for more information.
* Added a new `placeholderBuilder` function to the `MobileScanner` widget to customize the preview placeholder.
* Added `autoStart` parameter to MobileScannerController(). If set to false, controller won't start automatically.
* Added `hasTorch` function on MobileScannerController(). After starting the controller, you can check if the device has a torch.
* [iOS] Support `torchEnabled` parameter from MobileScannerController() on iOS
* [Web] Added ability to use custom barcode scanning js libraries 
  by extending `WebBarcodeReaderBase` class and changing `barCodeReader` property in `MobileScannerWebPlugin`

Fixes:
* Fixes the missing gradle setup for the Android project, which prevented gradle sync from working.
* Fixes `MobileScannerController.stop()` throwing when already stopped.
* Fixes `MobileScannerController.toggleTorch()` throwing if the device has no torch.
  Now it does nothing if the torch is not available.
* Fixes a memory leak where the `MobileScanner` would keep listening to the barcode events.
* Fixes the `MobileScanner` preview depending on all attributes of `MediaQueryData`.
  Now it only depends on its layout constraints.
* Fixed a potential crash when the scanner is restarted due to the app being resumed.
* [iOS] Fix crash when changing torch state
  
## 3.0.0-beta.2

**BREAKING CHANGES:**

* The arguments parameter of onDetect is removed. The data is now returned by the onStart callback
in the MobileScanner widget.
* onDetect now returns the object BarcodeCapture, which contains a List of barcodes and, if enabled, an image.
* allowDuplicates is removed and replaced by MobileScannerSpeed enum.
* onPermissionSet in MobileScanner widget is deprecated and will be removed. Use the onPermissionSet
onPermissionSet callback in MobileScannerController instead.
* [iOS] The minimum deployment target is now 11.0 or higher.

Features:
* The returnImage is working for both iOS and Android. You can enable it in the MobileScannerController.
The image will be returned in the BarcodeCapture object provided by onDetect.
* You can now control the DetectionSpeed, as well as the timeout of the DetectionSpeed. For more
info see the DetectionSpeed documentation. This replaces the allowDuplicates function.

Other improvements:
* Both the [iOS] and [Android] codebases have been refactored completely.
* [iOS] Updated POD dependencies

## 3.0.0-beta.1

**BREAKING CHANGES:**

* [Android] SDK updated to SDK 33.

Features:
* [Web] Add binaryData for raw value.
* [iOS] Captures the last scanned barcode with Barcode.image.
* [iOS] Add support for multiple formats on iOS with BarcodeScannerOptions.
* Add displayValue which returns barcode value in a user-friendly format.
* Add autoResume option to MobileScannerController which automatically resumes the camera when the application is resumed

Other changes:
* [Android] Revert camera2 dependency to stable release
* [iOS] Update barcode scanning library to latest version
* Several minor code improvements

## 2.0.0

**BREAKING CHANGES:**

This version is only compatible with flutter 3.0.0 and later.

## 1.1.2-play-services
This version uses the MLKit play-services model on Android in order to save space.
With the example app, this version reduces the release version from 14.9MB to 7MB.
More information: https://developers.google.com/ml-kit/vision/barcode-scanning/android

## 1.1.2
This version is the last version that will run on Flutter 2.x

Bugfixes:
* Changed onDetect to be mandatory.

## 1.1.1-play-services
This version uses the MLKit play-services model on Android in order to save space.
With the example app, this version reduces the release version from 14.9MB to 7MB.
More information: https://developers.google.com/ml-kit/vision/barcode-scanning/android

## 1.1.1
Bugfixes:
* Add null checks for Android.
* Update camera dependency for Android.
* Fix return type for analyzeImage.
* Add fixes for Flutter 3.

## 1.1.0
Bugfixes:
* Fix for 'stream already listened to' exception.
* Fix building on Android with latest Flutter version.
* Add several WEB improvements.
* Upgraded several dependencies.

## 1.0.0

**BREAKING CHANGES:**

This version adds a new allowDuplicates option which now defaults to FALSE. this means that it will only call onDetect once after a scan.
If you still want duplicates, you can set allowDuplicates to true.
This also means that you don't have to check for duplicates yourself anymore.

New features:
* We now have web support! Keep in mind that only QR codes are supported right now.

Bugfixes:
* Fixed hot reload not working.
* Fixed Navigator.of(context).pop() not working in the example app due to duplicate MaterialApp declaration.
* Fixed iOS MLKit version not resolving the latest version.
* Updated all dependencies

## 0.2.0
You can provide a path to controller.analyzeImage(path) in order to scan a local photo from the gallery!
Check out the example app to see how you can use the image_picker plugin to retrieve a photo from
the gallery. Please keep in mind that this feature is only supported on Android and iOS.

Another feature that has been added is a format selector!
Just keep in mind that iOS for now only supports 1 selected barcode.

## 0.1.3
* Fixed crash after asking permission. [#29](https://github.com/juliansteenbakker/mobile_scanner/issues/29)
* Upgraded cameraX from 1.1.0-beta01 to 1.1.0-beta02

## 0.1.2
* MobileScannerArguments is now exported. [#7](https://github.com/juliansteenbakker/mobile_scanner/issues/7)

Bugfixes:
* Fixed application crashing when stop() or start() is called multiple times. [#5](https://github.com/juliansteenbakker/mobile_scanner/issues/5)
* Fixes controller not being disposed correctly. [#23](https://github.com/juliansteenbakker/mobile_scanner/issues/23)
* Catch error when no camera is found. [#19](https://github.com/juliansteenbakker/mobile_scanner/issues/19)

## 0.1.1
mobile_scanner is now compatible with sdk >= 2.12 and flutter >= 2.2.0

## 0.1.0
We now have MacOS support using Apple's Vision framework!
Keep in mind that for now, only the raw value of the barcode object is supported.

Bugfixes:
* Fixed a crash when dispose is called in a overridden method. [#5](https://github.com/juliansteenbakker/mobile_scanner/issues/5) 

## 0.0.3
* Added some API docs and README
* Updated the example app

## 0.0.2
Fixed on iOS:
* You can now set the torch
* You can select the camera you want to use

## 0.0.1
Initial release!
Things working on Android:
* Scanning barcodes using the latest version of MLKit and CameraX!
* Switching camera's
* Toggling of the torch (flash)

Things working on iOS:
* Scanning barcodes using the latest version of MLKit and AVFoundation!
