function [colOut,points] = drawPoly(mainWin,rect,numPoints,fillFlag,bkCol,repeatFlag,colOut,points)

Screen('FillRect',mainWin,bkCol);

if ~repeatFlag
    xs = rand(numPoints,1)*rect(3);
    ys = rand(numPoints,1)*rect(4);

    rangex = range(xs);
    minx = min(xs);
    rangey = range(ys);
    miny = min(ys);

    newMinX = rect(3)/2-rangex/2;
    shiftX = minx-newMinX;

    newMinY = rect(4)/2-rangey/2;
    shiftY = miny-newMinY;

    xs = xs-shiftX;
    ys = ys-shiftY;

    points =[xs ys];

    curCol = round([rand*255 rand*255 rand*255]);
    while sum(abs(curCol-bkCol))<200
        curCol = round([rand*255 rand*255 rand*255]);
    end

    colOut = curCol;
end

Screen('FillPoly', mainWin, colOut, points, fillFlag);
WaitSecs(0.1);
Screen('Flip',mainWin,0,1);