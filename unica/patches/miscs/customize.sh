# Disable RescueParty
SMALI_PATCH "system" "system/framework/services.jar" \
    "smali/com/android/server/RescueParty.smali" "return" \
    '-$$Nest$smisDisabled()Z' \
    'true'
