function output = ActFun_BF_2_Increase(maxFe, iter)
    if iter>maxFe
        output = 0;
    else
        rate = 0;
        if ( iter < (maxFe/4) )
            rate = 0.7;
        elseif ( iter < (maxFe/2) )
            rate = 0.5;
        elseif ( iter < ( (3*maxFe) / 4) )
            rate = 0.3;
        else
            rate = 0;
        end
        output = rand>rate;
    end
end
