#!/system/bin/sh
string_delete () {
cmd power set-fixed-performance-mode-enabled false
cmd power set-adaptive-power-saver-enabled true
settings put global window_animation_scale 1.0
settings put global transition_animation_scale 1.0
settings put global animator_duration_scale 1.0
settings put system pointer_speed 0
settings delete system peak_refresh_rate
settings delete system user_refresh_rate
settings delete global activity_manager_constants max_cached_processes
settings delete system enforce_process_limit false
settings delete global game_mode
} > /dev/null 2>&1 

string_delete
echo "Succes Removing [✔] "
echo "The system returns to normal [✔]"
 > /dev/null 2>&1 &
 echo "
░██╗░░░░░░░██╗██╗██████╗░███████╗
░██║░░██╗░░██║██║██╔══██╗██╔════╝
░╚██╗████╗██╔╝██║██████╔╝█████╗░░
░░████╔═████║░██║██╔═══╝░██╔══╝░░
░░╚██╔╝░╚██╔╝░██║██║░░░░░███████╗
░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░╚══════╝"
echo "• Wipe Tweaking [ ➤ ]"
{
settings put system pointer_speed 0
settings put secure long_press_timeout 350
settings put secure multi_press_timeout 350
settings delete secure show_rotation_suggestions
settings delete secure touch_size_scale
settings delete secure touch_exploration_enabled 
settings delete secure touch_pressure_scale 
settings delete secure touch_distance_scale 
settings delete secure view_scroll_friction 
settings delete secure multi_touch_enabled
settings delete secure assist_touch_gesture_enabled 
settings delete global block_untrusted_touches 
settings delete global maximum_obscuring_opacity_for_touch 
} > /dev/null 2>&1
echo "• Wipe Cache Module [ ➤ ]"
find /sdcard/Android/data/*/cache/* \ -delete &>/dev/null
