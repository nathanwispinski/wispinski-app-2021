function [colOut,squareOut] = drawSquares(mainWin,rect,squareGrid,colors,bkCol,repeatFlag,colOut,squareOut)

Screen('FillRect',mainWin,bkCol);

%assumes that we are dealing with screens (e.g. ipods) where limiting
%dimension is horizontal (x)

if ~repeatFlag
    xOrig = 0;
    yOrig = rect(4)/2-rect(3)/2;
    squareSize = rect(3)/squareGrid;
    ctr=1;
    for i = 1:squareGrid
        xStart = xOrig+(i-1)*squareSize;
        for ii = 1:squareGrid
            yStart = yOrig+(ii-1)*squareSize;
            curColIdx = ceil(rand*length(colors));
            curCol = colors{curColIdx};
            squareOut(:,ctr) = [xStart yStart xStart+squareSize yStart+squareSize]';
            colOut(:,ctr) = curCol';
            ctr = ctr+1;
        end
    end
end

Screen('FillRect', mainWin, colOut, squareOut);

WaitSecs(0.1);
Screen('Flip',mainWin,0,1);