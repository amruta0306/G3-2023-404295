set terminal png tiny size 800,800
set output "B73.self.png"
set size 1,1
set grid
unset key
set border 15
set tics scale 0
set xlabel "B73_chr4:8459376-10804407"
set ylabel "B73_chr4:8459376-10804407"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set mouse clipboardformat "[%.0f, %.0f]"
set xrange [1:2345032]
set yrange [1:2345032]
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
 "B73.self.fplot" title "FWD" w l ls 1, \
 "B73.self.rplot" title "REV" w l ls 2
