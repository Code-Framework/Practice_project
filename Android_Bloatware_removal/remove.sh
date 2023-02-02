#!/usr/bin/env bash
RED='\033[0;31m'
NC='\033[0m' # No Color
green='\033[0;32m'
clear
echo "INSTALLING ADB TOOL "
apt install adb-devices
echo "Please Wait"
clear
echo "getting device ready"
adb devices
#clear
echo ""
echo "${GREEN}THIS SCRIPT WILL ONLY REMOVE APPS WHICH ARE SAFE TO REMOVE AND NOT NECESSARY"
echo "${green}--------------------------------------------------------------------------"
echo "${RED}1${NC}${green}     XIAOMI BLOTWARE    -------->"                                
echo "--------------------------------------------------------------------------"
echo "${RED}2${NC}${green}    GOOGLE APPS (Any Phone)    -------->"                         
echo "--------------------------------------------------------------------------"
echo "${RED}3${NC}${green}    ANY PHONES (BETA)  -------->"                                      
echo "--------------------------------------------------------------------------"
echo "${RED}4${NC}${green}    REMOVE ADS (ANY PHONE)    -------->"
echo "--------------------------------------------------------------------------"
echo "${RED}5${NC}${green}    Danger (ANY PHONE)  -------->"
echo "--------------------------------------------------------------------------"
echo "${NC}Enter Value [ From ${RED}1${NC} to ${RED}5${NC}    ]"
read value  
clear
if [ $value = 1 ]
then
echo "${RED}---------------------------------------------------------------------------"
echo "${RED}Uninstalling apps..."
echo "---------------------------------------------------------------------------"
echo "${green}Mi Mover"
adb shell pm uninstall  -k --user 0 com.mi.global.mimover
echo -n "Mi Browser... "
adb shell pm uninstall  -k --user 0 com.android.browser
echo -n "Mi Feedback... "
adb shell pm uninstall  -k --user 0 com.miui.miservice
echo -n "Xiaomi Router"
adb shell pm uninstall  -k --user 0 com.xiaomi.router
echo -n "MIUI Forum... "
adb shell pm uninstall  -k --user 0 com.miui.enbbs
echo -n "Mi Feedback... "
adb shell pm uninstall  -k --user 0 com.miui.bugreport
echo -n "Mi Compass... "
adb shell pm uninstall  -k --user 0 com.miui.compass
echo -n "Mi Notes... "
adb shell pm uninstall  -k --user 0 com.miui.notes
#echo -n "Mi Screen Recorder... "
#adb shell pm uninstall  -k --user 0 com.miui.screenrecorder
echo -n "Mi Video... "
adb shell pm uninstall  -k --user 0 com.miui.videoplayer
echo -n "Mi Music... "
adb shell pm uninstall  -k --user 0 com.miui.player
echo -n "Mi Yellow Pages... "
adb shell pm uninstall  -k --user 0 com.miui.yellowpage
echo -n "Mi Wallpaper Carousel... "
adb shell pm uninstall  -k --user 0 com.miui.android.fashion.gallery
echo -n "Mi Health... "
adb shell pm uninstall  -k --user 0 com.mi.health
echo -n "App Vault/Minus Screen... "
adb shell pm uninstall  -k --user 0 com.mi.android.globalminusscreen
echo -n "Mi Drop... "
adb shell pm uninstall  -k --user 0 com.xiaomi.midrop
echo -n "Mi Apps... "
adb shell pm uninstall  -k --user 0 com.xiaomi.mipicks
echo -n "Mi Scanner... "
adb shell pm uninstall  -k --user 0 com.xiaomi.scanner
echo -n "Mi Remote Peel Plugin... "
adb shell pm uninstall  -k --user 0 com.duokan.phone.remotecontroller.peel.plugin
echo -n "Mi Remote... "
adb shell pm uninstall  -k --user 0 com.duokan.phone.remotecontroller
echo -n "Mi Doc Viewer... "
adb shell pm uninstall  -k --user 0 cn.wps.xiaomi.abroad.lite
adb shell pm uninstall  -k --user 0 com.mi.android.globalminusscreen
adb shell pm uninstall  -k --user 0 com.mipay.wallet.in 
adb shell pm uninstall  -k --user 0 com.xiaomi.smarthome
adb shell pm uninstall  -k --user 0 com.micredit.in.gp 
echo "Finished!"
echo "Exiting..."
echo "${RED}------------------------------------------------------------------------------"
echo "${RED}             Subscribe to LinuxTube "
echo "------------------------------------------------------------------------------"
elif [ $value = 2 ] 
then 
echo "${RED}-------------------------------------------------------------------------"
echo "${RED}Uninstalling apps..."
echo "-----------------------------------------------------------------------------"
echo "APPS EXCLUDED -> YOUTUBE, GOOGLE-MAPS AND  GMAIL"
echo ""
echo -n "${green}Google... "
adb shell pm uninstall  -k --user 0 com.google.android.googlequicksearchbox
#echo -n "${green}Google Drive "
#adb shell pm uninstall  -k --user 0 com.google.android.apps.docs
echo -n "Google Android Auto... "
adb shell pm uninstall  -k --user 0 com.google.android.projection.gearhead
#echo -n "Goole Mail... "
#adb shell pm uninstall  -k --user 0 com.google.android.gm
echo -n "Google Music... "
adb shell pm uninstall  -k --user 0 com.google.android.music
echo -n "Google Play Movies... "
adb shell pm uninstall  -k --user 0 com.google.android.videos
echo "GoogleDuo" 
adb shell pm uninstall  -k --user 0 com.google.android.apps.tachyon
echo -n "Google YouTube... "
adb shell pm uninstall  -k --user 0 com.google.android.youtube
echo -n "Google Duo... "
adb shell pm uninstall  -k --user 0 com.google.android.apps.tachyon
#echo -n "Google Maps... "
#adb shell pm uninstall  -k --user 0 com.google.android.apps.maps
echo -n "Google Docs... "
adb shell pm uninstall  -k --user 0 com.google.android.apps.docs
echo -n "Google Photos... "
adb shell pm uninstall  -k --user 0 com.google.android.apps.photos
echo -n "Google AR Core Library... "
adb shell pm uninstall  -k --user 0 com.google.ar.core
echo -n "Google Lens... "
adb shell pm uninstall  -k --user 0 com.google.ar.lens
echo "Google Podcasts:" 
adb shell pm uninstall  -k --user 0 com.google.android.apps.podcasts
echo "Google One:" 
adb shell pm uninstall  -k --user 0 com.google.android.apps.subscriptions.red
echo -n "Google Chrome... "
adb shell pm uninstall  -k --user 0 com.android.chrome
echo -n "Google Hangouts... "
adb shell pm uninstall  -k --user 0 com.google.android.talk
echo -n "Google Assistent... "
adb shell pm uninstall  -k --user 0 com.google.android.apps.googleassistant
echo "Finished!"
echo "Exiting..."
echo "${RED}-----------------------------------------------------------------------------"
echo "${RED}             Subscribe to LinuxTube "
echo "-----------------------------------------------------------------------------"
elif [ $value = 3 ]
then
echo "${RED}"
echo "-----------------------------------------------------------------------------"
echo "Uninstalling  apps  from | Realeme and oppo | "
echo "-----------------------------------------------------------------------------"
echo "${green}ORoaming"
adb shell pm uninstall -k -user 0 com.redteamobile.roaming
echo "Realme Community:" 
adb shell pm uninstall --user 0 com.realmecomm.app
echo "DocVault:" 
adb shell pm uninstall --user 0 com.os.docvault
echo "Default file manager:" 
adb shell pm uninstall --user 0 com.coloros.filemanager
echo "Focus Mode:" 
adb shell pm uninstall --user 0 com.coloros.focusmode
echo "GRealme/ColorOS browser:" 
adb shell pm uninstall --user 0 com.heytap.browser
echo "User Guide" 
adb shell pm uninstall -k --user 0 com.oppo.operationManual
echo "Heytap Cloud:" 
adb shell pm uninstall --user 0 com.heytap.cloud
echo "Realme/ColorOS music:" 
adb shell pm uninstall --user 0  com.oppo.music
echo "One-Tap Lock Screen:" 
adb shell pm uninstall --user 0 com.coloros.onekeylockscreen
echo "Realme Link:" 
adb shell pm uninstall --user 0 com.realme.link
echo "Realme PaySa:" 
adb shell pm uninstall --user 0 com.realmepay.payments
echo "Realme Store:" 
adb shell pm uninstall --user 0 com.realmestore.app
echo "Realme Recorder:" 
adb shell pm uninstall --user 0 com.coloros.soundrecorder
echo "Default video app: "
adb shell pm uninstall --user 0 com.coloros.video
echo "Default Weather app:"
adb shell pm uninstall --user 0 com.coloros.weather2 | 
adb shell pm uninstall --user 0 com.coloros.weather.service
echo "encent telemetry:" 
adb shell pm uninstall -k --user 0 com.tencent.soter.soterserver
echo "Hot Apps" 
adb shell pm uninstall -k --user 0 com.opos.cs
echo "HeySynergy"
adb shell pm uninstall -k --user 0 com.heytap.synergy
echo "Finshell Pay" 
adb shell pm uninstall -k --user 0 com.finshell.fin
#clear
echo "-----------------------------------------------------------------------------"
echo "Removing Samsung Gernal apps "
echo "-----------------------------------------------------------------------------"
adb shell pm uninstall -k --user 0 com.dsi.ant.sample.acquirechannels
adb shell pm uninstall -k --user 0 com.dsi.ant.plugins.antplus
adb shell pm uninstall -k --user 0 com.sec.android.easyonehand
adb shell pm uninstall -k --user 0 com.sec.android.widgetapp.samsungapps
adb shell pm uninstall -k --user 0 com.sec.android.app.launcher
adb shell pm uninstall -k --user 0 com.samsung.android.mateagent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanagerstub
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp
adb shell pm uninstall -k --user 0 com.samsung.android.app.social
#clear
echo "-----------------------------------------------------------------------------"
echo "Removing Samsung Gimmicy Apps"
echo "-----------------------------------------------------------------------------"
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji
adb shell pm uninstall -k --user 0 com.google.ar.core
adb shell pm uninstall -k --user 0 flipboard.boxer.app
adb shell pm uninstall -k --user 0 com.samsung.android.wellbeing
adb shell pm uninstall -k --user 0 com.samsung.android.da.daagent
adb shell pm uninstall -k --user 0 com.samsung.android.service.livedrawing
adb shell pm uninstall -k --user 0 com.sec.android.mimage.avatarstickers
#clear
adb shell pm uninstall -k --user 0 com.samsung.android.email.provider
adb shell pm uninstall -k --user 0 com.wsomacp
adb shell pm uninstall -k --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall -k --user 0 com.enhance.gameservice
adb shell pm uninstall -k --user 0 com.samsung.android.game.gametools
adb shell pm uninstall -k --user 0 com.samsung.android.game.gos
adb shell pm uninstall -k --user 0 com.samsung.android.gametuner.thin
adb shell pm uninstall -k --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall -k --user 0 com.samsung.android.app.sbrowseredge
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall -k --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
echo "-----------------------------------------------------------------------------"
echo "Samsumf Dex"
echo "-----------------------------------------------------------------------------"
adb shell pm uninstall -k --user 0 com.sec.android.desktopmode.uiservice
adb shell pm uninstall -k --user 0 com.samsung.desktopsystemui
adb shell pm uninstall -k --user 0 com.sec.android.app.desktoplauncher
adb shell pm uninstall -k --user 0 com.samsung.android.service.peoplestripe
adb shell pm uninstall -k --user 0 com.samsung.android.hmt.vrsvc
adb shell pm uninstall -k --user 0 com.samsung.android.app.vrsetupwizardstub
adb shell pm uninstall -k --user 0 com.samsung.android.hmt.vrshell
adb shell pm uninstall -k --user 0 com.google.vr.vrcore
adb shell pm uninstall -k --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo
adb shell pm uninstall -k --user 0 com.samsung.android.app.sbrowseredge
adb shell pm uninstall -k --user 0 com.samsung.android.app.tips
adb shell pm uninstall -k --user 0 com.samsung.android.voc
adb shell pm uninstall -k --user 0 com.samsung.android.ardrawing
echo "-----------------------------------------------------------------------------"
echo "Removing Vivo Apps"
echo "-----------------------------------------------------------------------------"
adb shell pm uninstall -k --user 0 com.coloros.compass2
adb shell pm uninstall -k --user 0 com.coloros.compass2
adb shell pm uninstall -k --user 0 com.coloros.video
adb shell pm uninstall -k --user 0 com.nearme.themestore
adb shell pm uninstall -k --user 0 com.coloros.oppomultiapp
adb shell pm uninstall -k --user 0 com.oppo.music
adb shell pm uninstall -k --user 0 com.nearme.browser
adb shell pm uninstall -k --user 0 com.redteamobile.roaming.deamon
adb shell pm uninstall -k --user 0 com.coloros.weather.service
adb shell pm uninstall -k --user 0 com.coloros.weather2
adb shell pm uninstall -k --user 0 com.duokan.phone.remotecontrollwer
echo "-----------------------------------------------------------------------------"
echo "Removing Moto Apps"
echo "-----------------------------------------------------------------------------"
echo "Finished!"
echo "Exiting..."
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Subscribe to LinuxTube "
echo "-----------------------------------------------------------------------------"
elif [ $value = 4 ] 
then
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Removing Ads..... "
echo "-----------------------------------------------------------------------------"
echo "${green}"
adb shell pm uninstall -k --user 0 com.tencent.soter.soterserver
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.katana 
echo "Finished!"
echo "Exiting..."
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Subscribe to  LinuxTube "
echo "-----------------------------------------------------------------------------"
elif [ $value = 5 ] 
then
#read data
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Enter Package Name..... "
echo "-----------------------------------------------------------------------------"
echo "${green}"
echo "${green}"
adb shell pm uninstall -k --user 0 com.android.vending
adb shell pm uninstall -k --user 0 com.google.android.packageinstaller
adb shell pm uninstall -k --user 0 com.android.settings
echo "Finished!"
echo "Exiting..."
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Subscribe to  LinuxTube "
echo "-----------------------------------------------------------------------------"
else
clear
echo ""
echo "${green} PLEASE ENTER VALID INPUT "
echo "${RED}-----------------------------------------------------------------------------"
echo " ${RED}Watch Video on LinuxTube "
echo "-----------------------------------------------------------------------------"
fi
