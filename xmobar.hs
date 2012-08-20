-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

Config {
    font = "xft:Fixed-8",
    bgColor = "#2c2c2c",
    fgColor = "#ffffff",
    lowerOnStart = True,
    commands = [
	Run Battery ["-t", "Batt: <left>%", "-L","20","-H","50","--high","#CEFFAC","--normal","yellow", "--low", "#FFB6B0"] 10,
        Run Weather "ENVA" ["-t","<tempC>C","-L","10","-H","20","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
	Run Cpu ["-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10, 
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlan0" ["-t","wlan0: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "eth0" ["-t","eth0: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%A %b %_d %H:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %cpu%   %memory%   %eth0%   %battery%   %date%   %ENVA%" 
}
