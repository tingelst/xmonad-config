-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

Config {
    font = "xft:Fixed-8",
    position = Static { xpos = 0, ypos = 0, width = 1200, height = 16 },
    --position = Static { xpos = 0, ypos = 0, width = 2480, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Battery ["-t", "Batt: <left>%"] 10,
        Run Weather "ENVA" ["-t","<tempC>C"] 36000,
        Run Cpu ["-L","30","-H","60"] 10,
        Run Memory ["-t","Mem: <usedratio>%"] 10,
        Run Network "wlan0" ["-t","wlan0: <rx>, <tx>"] 10,
        Run Network "eth0" ["-t","eth0: <rx>, <tx>"] 10,
        Run Date "%A %b %_d %H:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %cpu%   %memory%   %eth0% %wlan0%   %battery%   %date%   %ENVA%" 
}
