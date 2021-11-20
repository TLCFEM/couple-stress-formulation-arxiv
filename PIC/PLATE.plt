reset
set term tikz size 6cm,4cm
set output "PLATEA.tex"
set key Left samplen 1 spacing 1.2 width 1.5 right bottom at screen .95,.05 maxrows 5
set xrange [0:0.2]
set yrange [0:5.2]
set xlabel "horizontal displacement"
set ylabel "horizontal resistance"
set xtics .05
set ytics 1
set margins 0,0,0,0
set grid xtics ytics mxtics mytics lt 1 lw 1 lc rgb "#EEEEEE"
plot "PLATEA" using (.2*$1):(-$2) w lp pointinterval 11 lw 3 pt 2 ps 2 lc rgb "#e41a1c" title "4",\
     "PLATEA" using (.2*$1):(-$3) w lp pointinterval 13 lw 3 pt 6 ps 2 lc rgb "#377eb8" title "8",\
     "PLATEA" using (.2*$1):(-$4) w lp pointinterval 17 lw 3 pt 3 ps 2 lc rgb "#4daf4a" title "16",\
     "PLATEA" using (.2*$1):(-$5) w lp pointinterval 7  lw 3 pt 8 ps 2 lc rgb "#984ea3" title "32",\
     "PLATEA" using (.2*$1):(-$6) w lp pointinterval 5  lw 3 pt 1 ps 2 lc rgb "#ff7f00" title "64"
set output
set output "PLATEB.tex"
set key Left samplen 1 spacing 1.2 width 1.5 right bottom at screen .38,.05 maxrows 5
plot "PLATEB" using (.2*$1):(-$2) w lp pointinterval 43 lw 3 pt 2 ps 2 lc rgb "#e41a1c" title "4",\
     "PLATEB" using (.2*$1):(-$3) w lp pointinterval 47 lw 3 pt 6 ps 2 lc rgb "#377eb8" title "8",\
     "PLATEB" using (.2*$1):(-$4) w lp pointinterval 53 lw 3 pt 3 ps 2 lc rgb "#4daf4a" title "16",\
     "PLATEB" using (.2*$1):(-$5) w lp pointinterval 59 lw 3 pt 8 ps 2 lc rgb "#984ea3" title "32"
set output