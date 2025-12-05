# Disable RescueParty
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali/com/android/server/RescueParty.smali" "return" \
    '-$$Nest$smisDisabled()Z' \
    'true'

SET_PROP_IF_DIFF "vendor" "ro.oem_unlock_supported" "0"
