LOG_STEP_IN "- Setting props"
SET_PROP "vendor" "ro.vendor.product.cpu.abilist" "arm64-v8a"
SET_PROP "vendor" "ro.vendor.product.cpu.abilist32" ""
SET_PROP "vendor" "ro.vendor.product.cpu.abilist64" "arm64-v8a"
SET_PROP "vendor" "ro.zygote" "zygote64"
SET_PROP "vendor" "dalvik.vm.dex2oat64.enabled" "true"
LOG_STEP_OUT

LOG_STEP_IN "Adding 64bit blobs"
Phonesky_APK="https://github.com/youknowmenig69/Equinox-ROM-ui8/releases/download/v1.0/Phonesky.apk"
Phonesky_PATH="priv-app/Phonesky/Phonesky.apk"
TrichromeLibrary64_APK="https://github.com/youknowmenig69/Equinox-ROM-ui8/releases/download/v1.0/TrichromeLibrary64.apk"
TrichromeLibrary64_PATH="app/TrichromeLibrary64/TrichromeLibrary64.apk"
WebViewGoogle64_APK="https://github.com/youknowmenig69/Equinox-ROM-ui8/releases/download/v1.0/WebViewGoogle64.apk"
WebViewGoogle64_PATH="app/WebViewGoogle64/WebViewGoogle64.apk"

DOWNLOAD_FILE "$Phonesky_APK" "$WORK_DIR/product/$Phonesky_PATH"
DOWNLOAD_FILE "$TrichromeLibrary64_APK" "$WORK_DIR/product/$TrichromeLibrary64_PATH"
DOWNLOAD_FILE "$WebViewGoogle64_APK" "$WORK_DIR/product/$WebViewGoogle64_PATH"
LOG_STEP_OUT

rm -rf "$WORK_DIR/product/app/TrichromeLibrary"
rm -rf "$WORK_DIR/product/app/WebViewGoogle"

ls "$WORK_DIR/product/app"