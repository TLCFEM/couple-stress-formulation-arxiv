reset
set term tikz size 16cm,4.5cm
set output "JOINTA.tex"
# set margins 0,0,0,0
set key out vert center right
set key Left samplen 1 spacing 1.2 width 2.5 maxrows 8 opaque
set logscale x 2
set logscale y 10
set xrange [1:128]
set yrange [1E-5:1E1]
set xlabel "number of elements per edge"
set ylabel "resistance"
set format y "\\num[print-unity-mantissa=false]{E%L}"
set grid xtics ytics lt 1 lw 1 lc rgb "#EEEEEE"
plot "JOINT.txt" using 1:2 w lp lw 3 pt 1 ps 1.5 lc rgb "#e41a1c" title "SGCMQG",\
     "JOINT.txt" using 1:4 w lp lw 3 pt 2 ps 1.5 lc rgb "#377eb8" title "$l=\\num[print-unity-mantissa=false]{E3}$",\
     "JOINT.txt" using 1:5 w lp lw 3 pt 3 ps 1.5 lc rgb "#4daf4a" title "$l=\\num[print-unity-mantissa=false]{E2}$",\
     "JOINT.txt" using 1:6 w lp lw 3 pt 4 ps 1.5 lc rgb "#984ea3" title "$l=\\num[print-unity-mantissa=false]{E1}$",\
     "JOINT.txt" using 1:7 w lp lw 3 pt 10 ps 1.5 lc rgb "#ff7f00" title "$l=\\num{1}$",\
     "JOINT.txt" using 1:8 w lp lw 3 pt 6 ps 1.5 lc rgb "#ffff33" title "$l=\\num[print-unity-mantissa=false]{E-1}$",\
     "JOINT.txt" using 1:9 w lp lw 3 pt 7 ps 1.5 lc rgb "#a65628" title "$l=\\num[print-unity-mantissa=false]{E-2}$",\
     "JOINT.txt" using 1:10 w lp lw 3 pt 8 ps 1.5 lc rgb "#f781bf" title "$l=\\num[print-unity-mantissa=false]{E-3}$"
set output
set output "JOINTB.tex"
set yrange [1E-4:1E1]
plot "JOINT.txt" using 1:11 w lp lw 3 pt 1 ps 1.5 lc rgb "#e41a1c" title "SGCMQG",\
     "JOINT.txt" using 1:13 w lp lw 3 pt 2 ps 1.5 lc rgb "#377eb8" title "$l=\\num[print-unity-mantissa=false]{E3}$",\
     "JOINT.txt" using 1:14 w lp lw 3 pt 3 ps 1.5 lc rgb "#4daf4a" title "$l=\\num[print-unity-mantissa=false]{E2}$",\
     "JOINT.txt" using 1:15 w lp lw 3 pt 4 ps 1.5 lc rgb "#984ea3" title "$l=\\num[print-unity-mantissa=false]{E1}$",\
     "JOINT.txt" using 1:16 w lp lw 3 pt 10 ps 1.5 lc rgb "#ff7f00" title "$l=\\num{1}$",\
     "JOINT.txt" using 1:17 w lp lw 3 pt 6 ps 1.5 lc rgb "#ffff33" title "$l=\\num[print-unity-mantissa=false]{E-1}$",\
     "JOINT.txt" using 1:18 w lp lw 3 pt 7 ps 1.5 lc rgb "#a65628" title "$l=\\num[print-unity-mantissa=false]{E-2}$",\
     "JOINT.txt" using 1:19 w lp lw 3 pt 8 ps 1.5 lc rgb "#f781bf" title "$l=\\num[print-unity-mantissa=false]{E-3}$"
set output
set output "JOINTC.tex"
set yrange [1E-3:1E1]
plot "JOINT.txt" using 1:20 w lp lw 3 pt 1 ps 1.5 lc rgb "#e41a1c" title "SGCMQG",\
     "JOINT.txt" using 1:22 w lp lw 3 pt 2 ps 1.5 lc rgb "#377eb8" title "$l=\\num[print-unity-mantissa=false]{E3}$",\
     "JOINT.txt" using 1:23 w lp lw 3 pt 3 ps 1.5 lc rgb "#4daf4a" title "$l=\\num[print-unity-mantissa=false]{E2}$",\
     "JOINT.txt" using 1:24 w lp lw 3 pt 4 ps 1.5 lc rgb "#984ea3" title "$l=\\num[print-unity-mantissa=false]{E1}$",\
     "JOINT.txt" using 1:25 w lp lw 3 pt 10 ps 1.5 lc rgb "#ff7f00" title "$l=\\num{1}$",\
     "JOINT.txt" using 1:26 w lp lw 3 pt 6 ps 1.5 lc rgb "#ffff33" title "$l=\\num[print-unity-mantissa=false]{E-1}$",\
     "JOINT.txt" using 1:27 w lp lw 3 pt 7 ps 1.5 lc rgb "#a65628" title "$l=\\num[print-unity-mantissa=false]{E-2}$",\
     "JOINT.txt" using 1:28 w lp lw 3 pt 8 ps 1.5 lc rgb "#f781bf" title "$l=\\num[print-unity-mantissa=false]{E-3}$"
set output