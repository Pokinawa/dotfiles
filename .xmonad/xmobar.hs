-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 1920, ypos = 0, width = 1760, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "EGSC" ["-t","<icon=/home/anuj/.xmonad/icons/part-cloud.xbm/> <tempC>C <skyCondition>"
                           ,"-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","<icon=/home/anuj/.xmonad/icons/cpu.xbm/><total0> <total1> <total2> <total3>"
                     ,"-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","<icon=/home/anuj/.xmonad/icons/mem.xbm/> <usedratio>%"
                   ,"-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "enp4s0" ["-t","<icon=/home/anuj/.xmonad/icons/net-wifi.xbm/><icon=/home/anuj/.xmonad/icons/down.xbm/><rx><icon=/home/anuj/.xmonad/icons/up.xbm/><tx>"
                             ,"-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run BatteryP ["BAT0"]
                     ["-t", " <acstatus>"
                     , "-L", "10", "-H", "80"
                     , "-l", "red", "-h", "green"
                     , "--", "-O", "<icon=/home/anuj/.xmonad/icons/power-ac.xbm/>"
                     , "-o", "<icon=/home/anuj/.xmonad/icons/power-bat2.xbm/> <left>%"
                     , "-i", "<icon=/home/anuj/.xmonad/icons/power-ac.xbm/>"] 10,
        Run DiskU [("/", "<icon=/home/anuj/.xmonad/icons/hdd.xbm/> <used>/<size>")]
                  ["-L", "20", "-H", "50", "-m", "1", "-p", "3"
                  ,"--normal", "yellow", "--high", "red"
                  ,"--low", "green"] 20,
        Run CoreTemp ["-t", "<icon=/home/anuj/.xmonad/icons/temp.xbm/> <core0>|<core1>|<core2>|<core3>C"
                     ,"-L", "40", "-H", "60","-l", "lightblue", "-n", "gray90", "-h", "red"] 50,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %battery%   %disku%   %coretemp%   %multicpu%   %memory%   %enp4s0%   %EGSC%   <fc=#FFFFCC>%date%</fc>"
}
