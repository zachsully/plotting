if (!exists("binwidth")) binwidth=0.25
bin(x,width)=width*floor(x/width)

plot data using (bin($1,binwidth)):(1.0) smooth frequency with boxes
pause -1