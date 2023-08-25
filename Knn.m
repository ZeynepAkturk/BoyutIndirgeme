function hata_degeri =Knn(egitim_veri,test_veri,komsu_sayisi)


global Veri;
global sinif;

[egitim_sayisi,nitelik_sayisi]=size(egitim_veri);
[test_sayisi,~] =size(test_veri);

%uzaklik hesaplama işlemleri
uzaklik_dizisi=zeros(egitim_sayisi,test_sayisi);

for i=1:egitim_sayisi
    for j=1:test_sayisi
        toplam=0;
        for k=1:nitelik_sayisi
           toplam=toplam+(egitim_veri(i,k)-test_veri(j,k))^2;
        end
        uzaklik_dizisi(i,j)=sqrt(toplam);
    end
end

sirali_uzaklik=zeros(egitim_sayisi,test_sayisi);
sirali_indeks=zeros(egitim_sayisi,test_sayisi);
test_etiketi=zeros(test_sayisi,1);


dogru_sayi=0;
yanlis_sayi=0;

for i=1:test_sayisi
[siralanan,indeks]=sort(uzaklik_dizisi(:,i));

%sinif bulma işlemleri
labels=unique(Veri.egitim_etiket);
siniflar=zeros(sinif,1);

for j=1:komsu_sayisi

    indeks_=find(labels==Veri.egitim_etiket(indeks(j)));
    siniflar(indeks_)=siniflar(indeks_)+1;

end
[~,boyut]=max(siniflar);
test_etiketi(i)=labels(boyut);


if(test_etiketi(i)==(Veri.test_etiket(i,1)))
    dogru_sayi=dogru_sayi+1;
else
    yanlis_sayi=yanlis_sayi+1;

end
end

hata_degeri =((100*yanlis_sayi)/test_sayisi);

end


