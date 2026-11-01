## Yapay Zeka Cevabi
Yapay zeka araci, PostgreSQL ortaminda `SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED` komutu kullanildiginda kirli okuma (Dirty Read) yapilabilecegini iddia etmistir.

## Uygulamali Deney ve Karsilastirma
PostgreSQL uzerinde B oturumunda `READ UNCOMMITTED` seviyesi ayarlanip Deney 2a tekrarlandiginda, A oturumunun henüz commit etmedigi degisikligin B oturumu tarafindan gorulemedigi bizzat gozlemlenmistir.

## Elestiri ve Degerlendirme
1. Yapay zeka genel SQL standartlarina dayanarak yanlis bir bilgi vermistir. PostgreSQL mimarisinde `READ UNCOMMITTED` seviyesi tanimlidir ancak arka planda kesinlikle `READ COMMITTED` olarak davranir.
2. PostgreSQL dokumanlarinda da belirtildigi uzere sistem kirli okumaya (Dirty Read) hiçbir izolasyon seviyesinde izin vermez. Arac bu veritabani motoruna ozel davranisi kacirmistir.
