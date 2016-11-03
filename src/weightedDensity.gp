if (!exists("binwidth")) binwidth=0.25
bin(x,width)=width*floor(x/width)

set title "Density"
set xlabel "Value"
set ylabel "# Occurance"
plot data using (bin($2,binwidth)):($1) smooth frequency with boxes
pause -1