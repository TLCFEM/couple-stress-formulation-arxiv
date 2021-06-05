reset
set term tikz size 6cm,4cm
set output "RINGA.tex"
set key Left samplen 1 spacing 1.2 width -1 right top at screen .95,.95 maxrows 4
set xrange [1:2]
set yrange [-.05:1]
set xlabel "radius"
set ylabel "normalised displacement"
set xtics .2
set ytics .2
set margins 0,0,0,0
set grid xtics ytics mxtics mytics lt 1 lw 1 lc rgb "#EEEEEE"
plot "RINGA.txt" using 1:2 w l lw 6 lc rgb "#000000" title "analytical",\
     "RINGA.txt" using 1:3 every 2 w p lw 3 pt 6 ps 1.8 lc rgb "#e41a1c" title "CSMQ8",\
     "RINGA.txt" using 4:5 every 2 w p lw 3 pt 3 ps 1.8 lc rgb "#ff7f00" title "CSMQ4",\
     "RINGA.txt" using 6:7 every 2 w p lw 3 pt 1 ps 1.8 lc rgb "#33a02c" title "CSMT3"
set output
set output "RINGB.tex"
set key Left samplen 1 spacing 1.2 width -1 right top at screen .95,.95 maxrows 4
set xrange [1:2]
set yrange [-.05:1]
set xlabel "radius"
set ylabel "normalised displacement"
set xtics .2
set ytics .2
set margins 0,0,0,0
set grid xtics ytics mxtics mytics lt 1 lw 1 lc rgb "#EEEEEE"
plot "RINGB.txt" using 1:2 w l lw 6 lc rgb "#000000" title "analytical",\
     "RINGB.txt" using 1:3 every 2 w p lw 3 pt 6 ps 1.8 lc rgb "#e41a1c" title "CSMQ8",\
     "RINGB.txt" using 4:5 every 2 w p lw 3 pt 3 ps 1.8 lc rgb "#ff7f00" title "CSMQ4",\
     "RINGB.txt" using 6:7 every 2 w p lw 3 pt 1 ps 1.8 lc rgb "#33a02c" title "CSMT3"
set output