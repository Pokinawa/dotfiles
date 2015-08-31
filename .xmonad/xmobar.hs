-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1360, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "EGSC" ["-t","<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/temp.xbm/><tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/cpu.xbm/><total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/mem.xbm/> <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlp3s0" ["-t","<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/net-wifi.xbm/><icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/down.xbm/><rx><icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/up.xbm/><tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run BatteryP ["BAT0"]
                     ["-t", " <acstatus> <left>%"
                     , "-L", "10", "-H", "80"
                     , "-l", "red", "-h", "green"
                     , "--", "-O", "<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/power-ac.xbm/>"
                     , "-o", "<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/power-bat2.xbm/>"
                     , "-i", "<icon=/home/anuj/.xmonad/dzen-bitmap-icons/dzen-xbm-pack/power-ac.xbm/>"] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %battery%   %multicpu%   %memory%   %wlp3s0%   <fc=#FFFFCC>%date%</fc>   %EGSC%  "
}
