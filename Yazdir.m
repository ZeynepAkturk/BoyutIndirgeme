clear all
clc

global Veri;

Verileri_Oku('cancer');
egitim_veri=Veri.egitim_veri;
test_veri=Veri.test_veri;

komsu_sayisi=5;
esik_deger=0.4;
case_numarasi=3;

[klasik_knn_performans]=Knn(egitim_veri,test_veri,komsu_sayisi);
[agirliklar,afdb_sfs_knn_performans]=Case_Sec(case_numarasi,egitim_veri,test_veri,komsu_sayisi);

[knn_performansi,afdb_sfs_knn_performans,sayac,egitim_veri,test_veri]=Boyut_Indirge(agirliklar,egitim_veri,test_veri,komsu_sayisi,esik_deger, case_numarasi);









