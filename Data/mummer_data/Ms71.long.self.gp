set terminal png tiny size 800,800
set output "Ms71.long.self.png"
set size 1,1
set grid
unset key
set border 15
set tics scale 0
set xlabel "Ms71_chr4:5250165-10924230"
set ylabel "Ms71_chr4:5250165-10924230"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set mouse clipboardformat "[%.0f, %.0f]"
set xrange [1:5674066]
set yrange [1:5674066]
set zrange [0:100]
set colorbox default
set cblabel "%similarity"
set cbrange [0:100]
set cbtics 20
set pm3d map
set palette model RGB defined ( \
  0 "#000000", \
  4 "#DD00DD", \
  6 "#0000DD", \
  7 "#00DDDD", \
  8 "#00DD00", \
  9 "#DDDD00", \
 10 "#DD0000"  \
)
set style line 1  palette lw 3 pt 6 ps 1
set style line 2  palette lw 3 pt 6 ps 1
set style line 3  palette lw 3 pt 6 ps 1
splot \
 "Ms71.long.self.fplot" title "FWD" w l ls 1, \
 "Ms71.long.self.rplot" title "REV" w l ls 2
