function [] = SingerMap_Reverse(maxFe)
    global chaosMap
    chaosMap = 1-chaos(8,maxFe,1);
end