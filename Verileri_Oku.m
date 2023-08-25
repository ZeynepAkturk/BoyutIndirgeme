function Verileri_Oku(veri_seti_adi)

global Veri
global sinif


switch veri_seti_adi
   
    case 'vehicle'
        Veri.egitim_veri=table2array(readtable("vehicle.xlsx",'Range','B1:S600'), 'ReadVariableNames' ,false);
        Veri.test_veri=table2array(readtable("vehicle.xlsx",'Range','B600:S846'), 'ReadVariableNames' ,false);
        Veri.egitim_etiket=table2array(readtable("vehicle.xlsx",'Range','A1:A600'),'ReadVariableNames' ,false);
        Veri.test_etiket=table2array(readtable("vehicle.xlsx",'Range','A600:A846'),'ReadVariableNames' ,false);

    case 'cancer'
        Veri.egitim_veri=table2array(readtable("cancer.xls",'Range','B1:AF398'), 'ReadVariableNames' ,false);
        Veri.test_veri=table2array(readtable("cancer.xls",'Range','B398:AF569'), 'ReadVariableNames' ,false);
        Veri.egitim_etiket=table2array(readtable("cancer.xls",'Range','A1:A398'),'ReadVariableNames' ,false);
        Veri.test_etiket=table2array(readtable("cancer.xls",'Range','A398:A569'),'ReadVariableNames' ,false);

    case 'diabetic'
        Veri.egitim_veri=table2array(readtable("diabetic.xlsx",'Range','B1:T805'),'ReadVariableNames' ,false);
        Veri.test_veri=table2array(readtable("diabetic.xlsx",'Range','B806:T1151'),'ReadVariableNames' ,false);
        Veri.egitim_etiket=table2array(readtable("diabetic.xlsx",'Range','A1:A805'),'ReadVariableNames' ,false);
        Veri.test_etiket=table2array(readtable("diabetic.xlsx",'Range','A806:A1151'),'ReadVariableNames' ,false);
    otherwise
        warning('Geçerli veri seti adı giriniz !')
end

label=unique(Veri.egitim_etiket);
sayi=findgroups(label);
sinif=size(sayi,1);

[boyut,~]=size(Veri.egitim_veri);
fprintf('Eğitim verisinin boyutu:'); disp(boyut);

[indeks,~]=size(Veri.test_veri);
fprintf('Test verisinin boyutu:'); disp(indeks);

[sinif,~]=size(label);
fprintf('Sınıf sayısı:'); disp(sinif);
fprintf('Sınıflar:'); disp(label);


end






