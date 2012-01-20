function [ Pts ] = CollectPts( ShowLabel )
    %Select points from the current showing figure. Right-click to select
    %the last point and finish.

    hold on;
    bb=1;
    a=1;
    A=[0,0];
    while bb==1
        [x,y,button]=ginput(1);
        A=vertcat(A,[x,y]);
        if ShowLabel>0
            text(x,y,num2str(a),'BackgroundColor',[1 1 1]);
        else
            plot(x, y, '+');
        end

        a=a+1;
        if button==3
            %right click to select the last point and finish selection
            break;
        end
    end
    A(1,:)=[];
    A=horzcat(A,ones(size(A,1),1));
    Pts=A';

    hold off;
end

