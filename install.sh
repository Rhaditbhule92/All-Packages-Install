#!/data/data/com.termux/files/usr/bash
echo $red 
 echo ""----------------------------------------------------------------------------- ""

termux-setup-storage
apt update
apt upgrade -y
apt dist-upgrade -y
apt install root-repo -y
apt install x11-repo -y
apt install termux-api -y
apt install mc -y
apt install toilet -y
apt install figlet -y
apt install cloudflared -y
apt install python -y
apt install python2 -y
apt install ruby -y 
apt install git -y
apt install php -y 
apt install perl -y
apt install nmap -y
apt install bash -y
apt install clang -y
apt install jq -y
apt install macchanger -y
apt install nano -y
apt install curl -y
apt install tar -y
apt install zip -y
apt install unzip -y
apt install tor -y
apt install wget -y
apt install wcalc -y
apt install cloudflared -y
apt install openssh -y
apt install sshpass -y
gem install lolcat
apt install openssl
apt install bmon -y

apply_settings () {
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5
settings put system pointer_speed 5
settings put system peak_refresh_rate 120
settings put system user_refresh_rate 120
settings put global activity_manager_constants max_cached_processes 1024
settings put system enforce_process_limit false
settings put global game_mode 2
} > /dev/null 2>&1 

optimize_games() {
    packages=(
        com.pwrd.opmwsea
        com.kurogame.gplay.punishing.grayraven.en
        com.netmarble.bnsmasia
        com.nexon.v4gb
        com.syjgame.hgame.cn
        com.lnaz.jlsyen
        com.rsg.heroesevolved
        com.wemade.mir4global
        com.nebulajoy.act.dmcpoc
        com.garena.game.bc
        com.playdigious.littlenightmare
        com.mobile.legends
        com.garena.game.codm
        com.dts.freefiremax
        com.dts.freefireth
        com.miHoYo.GenshinImpact
        com.tencent.ig
        com.pubg.newstate
        com.shooter.modernWarships
        com.carxtech.sr
        com.pubg.imobile
        com.pubg.krmobile
        com.HoYoverse.hkrpgoversea
        com.roblox.client
        com.ngame.allstar.eu
        com.garena.game.lmjx
        com.miHoYo.bh3global
        com.epicgames.fortnite
        com.mojang.minecraftpe
        com.proximabeta.mf.uamo
        net.wargaming.wot.blitz
        com.mobilelegends.hwag
        com.ea.gp.fifamobile
        com.gameloft.android.ANMP.GloftA8HM
        com.igg.android.vikingriseglobal
        com.axlebolt.standoff2
        com.kurogame.gplay.punishing.grayraven.en
        com.kakaogames.gdts
        com.netease.newspike
        com.sofunny.Sausage
        com.levelinfinite.sgameGlobal.midaspay
        jp.konami.pesam
        com.carxtech.sr
        com.ea.gp.fifaworld
        com.bycodec.project_drift
        com.fengiiley.frlegends
        com.levelinfinite.sgameGlobal
        com.ea.games.r3_row
        com.rockstargames.gtasa
    )

    for package in "${packages[@]}"; do
        cmd game mode performance "$package"
        cmd shortcut reset-throttling "$package"
        cmd package compile -m quicken -f "$package"
        cmd activity kill-all
        cmd game mode 1 "$package"
        cmd power set-fixed-performance-mode-enabled true
        cmd power set-adaptive-power-saver-enabled false
        am force-stop "$package"
    done
} > /dev/null 2>&1


set_properties () {


    success_count=0
    failure_count=0


    prop=(
         "debug.egl.hw 0"
         "debug.sf.hw 0"
         "debug.egl.sync 0"
         "debug.egl.profiler 1"
         "debug.hwui.overdraw_color 0xFFFF0000"
         "debug.composition.type gpu"
         "debug.gpu.rendering.framebuffer 2"
         "debug.egl.swapinterval 0"
         "debug.gr.numframebuffers 5"
         "debug.graphics.enable_tracing 1"
         "debug.hwui.renderer skiagl"
         "debug.hwui.single_buffer true"
         "debug.hwui.triple_buffering 1"
         "debug.sf.showfps 0"
         "debug.sf.high_fps_early_gl_phase_offset_ns 8900000"
         "debug.sf.high_fps_early_phase_offset_ns 7500000"
         "debug.sf.high_fps_late_app_phase_offset_ns 100000"
         "debug.sf.high_fps_early_gl_phase_offset_ns 650000"
         "debug.sf.high_fps_early_gl_phase_offset_ns 9000000")

    for command in "${prop[@]}"; do

        if echo $(setprop $command) >/dev/null 2>&1; then
          success_count=$((success_count + 1))
        else
          failure_count=$((failure_count + 1))
        fi
    done          
} > /dev/null 2>&1 

plus () {
    apply_settings
    optimize_games 
}

echo "╭━━┳━━┳━┳━┳━╮  ╭━┳━┳━┳━━┳━┳━┳━┳━┳━━┳━┳┳━┳━╮╭╮╱╭┳━━━╮"
sleep 0.5
echo "┃╭━┫╭╮┃┃┃┃┃┳╯  ┃╋┃┳┫╋┃━┳┫┃┃╋┃┃┃┃┃╭╮┃┃┃┃╭┫┳╯┃╰┳╯┃╭━━╯"
echo "┃╰╮┃┣┫┃┃┃┃┃┻╮  ┃╭┫┻┫╮┫╭╯┃┃┃╮┫┃┃┃┃┣┫┃┃┃┃╰┫┻╮╰╮┃╭┫╰━━╮"
sleep 0.5
echo "╰━━┻╯╰┻┻━┻┻━╯  ╰╯╰━┻┻┻╯╱╰━┻┻┻┻━┻┻╯╰┻┻━┻━┻━╯╱╰━╯┃╭━╮┃"
sleep 0.5
echo ".╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃╰━╯┃"
echo ""
echo ""
sleep 1
echo "  ׂ╰┈➤ $(date) "
echo ""
echo ""
sleep 1
echo " [ Info Device ]"
echo ""
echo "• ID Device    » $(getprop ro.product.model)"
sleep 1
echo "• ID Brand     » $(getprop ro.product.system.brand)"
sleep 1
echo "• ID Version   » $(getprop ro.build.version.release)"
sleep 1
echo "• ID Model     » $(getprop ro.build.product)"
sleep 1
echo "• ID Chipset   » $(getprop ro.product.board)"
sleep 1
echo "• ID Gpu       » $(getprop ro.hardware.egl)"
sleep 0.5
echo "• ID Cpu       » $(getprop ro.hardware)"
sleep 0.5
echo "• ID Kernel    » $(uname -r)"
echo ""
echo ""
sleep 1
echo "[ ! ] Start Device Optimization"
sleep 1
echo ""
echo "  □□□□□0%"
sleep 0.5
echo "  ■■■■■□□20%"
sleep 0.5
echo "  ■■■■■■□□40%"
plus
echo "  ■■■■■■■□□60%"
sleep 1
echo "  ■■■■■■■■□80%"
set_properties
sleep 4
echo "  ■■■■■■■■■□90%"
sleep 1
echo "  ■■■■■■■■■■100%"
sleep 2
echo ""
echo "[ <+> ] Module Success implemented on your device"
echo ""
echo ""
sleep 1
echo ""
echo "[ >+< ] Total kode Terpasang    : $success_count [✔]"
echo "[ >!< ] Total kode yang Gagal   : $failure_count"
echo ""
sleep 0.5
echo "ׂ╰┈➤ Enjoyy Game Performance V6 ❗"
echo ""
cmd notification post -S bigtext -t 'Game performance V6 is running 🎮' 'tag' "❗❗" > /dev/null 2>&1 &
