function [colOut,circOut] = drawCircles(mainWin,rect,numCircs,maxDiam,bkCol,repeatFlag, colOut, circOut)

%possibleColors = [248 251 0; 255 77 0; 255 0 126; 255 134 202; 161 140 255; 255 0 255; 190 255 204; 132 214 0; 0 195 19; 0 133 130; 0 206 255; 0 171 238; 49 0 215; 251 255 148; 148 113 51; 50 50 50];

Screen('FillRect',mainWin,bkCol);

if ~repeatFlag

    for i = 1:numCircs
        curCent = [round(rand*rect(3)) round(rand*rect(4))];
        curCol = round([rand*255 rand*255 rand*255]);
        curDiam = ceil(rand*maxDiam);
        circOut(:,i) = [curCent(1)-curDiam/2 curCent(2)-curDiam/2 curCent(1)+curDiam/2 curCent(2)+curDiam/2]';
        colOut(:,i) = curCol';
    end
    
end

Screen('FillOval', mainWin, colOut, circOut ,maxDiam);

WaitSecs(0.1);
Screen('Flip',mainWin,0,1);
