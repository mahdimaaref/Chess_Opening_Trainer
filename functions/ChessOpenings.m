classdef ChessOpenings
    
    properties
        white
        black
    end
    
 
    methods
        
        function newChessOpenings = ChessOpenings
            Opening         ={'null'};
            description     ={'null'};
            PGN             ={'null'};
            date_created    = datetime(now,'ConvertFrom','datenum');
            visitedNum      =0;
            passedNum       =0;
            failedNum       =0;
            white = table(Opening,description,PGN,date_created,visitedNum,passedNum,failedNum);
            black = table(Opening,description,PGN,date_created,visitedNum,passedNum,failedNum);
   
            newChessOpenings.white = white;
            newChessOpenings.black = black;
        end

        function saveChessOpenings(ChessOpenings,pAddress)
            save([pAddress,'\ChessOpenings.mat'],'ChessOpenings');
        end
        
        function newChessOpenings = loadChessOpenings(~,pAddress)
            t = load([pAddress,'\ChessOpenings.mat']);
            newChessOpenings = t.ChessOpenings;
        end
        
        function newChessOpenings = addChessOpenings(ChessOpenings,color,Opening,description,PGN)
            newChessOpenings = ChessOpenings;
            date_created    = datetime(now,'ConvertFrom','datenum');
            visitedNum      =0;
            passedNum       =0;
            failedNum       =0;
            temp = table(Opening,description,PGN,date_created,visitedNum,passedNum,failedNum);
            ldat = newChessOpenings.(color).Opening(end);
            if strcmp(ldat{1},'null')
                newChessOpenings.(color) = temp;
            else
                newChessOpenings.(color) = [newChessOpenings.(color) ; temp];
            end
        end
        
    end
    
end