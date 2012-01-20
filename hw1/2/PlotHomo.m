function   PlotHomo( line )
    a=line(1,1);
    b=line(2,1);
    c=line(3,1);
    syms x y;
    ezplot(a * x + b * y + c);
    colormap([0, 0, 1]); %blue line
end

