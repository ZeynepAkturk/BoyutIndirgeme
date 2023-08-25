function [agirliklar,performans] =Case_Sec(case_numarasi,egitim_veri,test_veri,komsu_sayisi)

switch(case_numarasi)
    case 1
[agirliklar,performans]=case_1(egitim_veri,test_veri,komsu_sayisi);
    case 2
        [agirliklar,performans]=case_2(egitim_veri,test_veri,komsu_sayisi);
    case 3
        [agirliklar,performans]=case_3(egitim_veri,test_veri,komsu_sayisi);

        otherwise
        warning('Geçerli bir case numarasını giriniz.')

end
end

