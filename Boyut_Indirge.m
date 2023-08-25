function [knn_performansi,afdb_sfs_knn_performans,sayac,egitim_veri,test_veri]=Boyut_Indirge(bestSolution,egitim_veri,test_veri,komsu_sayisi,esik_deger, case_numarasi)

[~,indeks]=size(bestSolution);

sayac=0;
i=indeks;
%disp(i);
while i>0
    if(bestSolution(1,i)<esik_deger)
        egitim_veri(:,i)=[];
        test_veri(:,i)=[];
        sayac=sayac+1;
    end
    i=i-1;
end

[~,indeks]=size(egitim_veri);
fprintf("İndirgemeden sonra nitelik sayisi :"+ indeks);

[knn_performansi]=Knn(egitim_veri,test_veri,komsu_sayisi);
[agirliklar,afdb_sfs_knn_performans]=Case_Sec(case_numarasi,egitim_veri,test_veri,komsu_sayisi);




end