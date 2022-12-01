/*
	STORED PROCEDURE : Saklı Yordam
	Özellikleri:
	1) VT nesnesidir, VT dosyasında bulunur ve vt dosyası ile taşınır
	2) Verilerin yordama aktarılmasına, işlenmesine ve yordamdan çıktı alınmasını sağlar.
	3) Daha hızlı çalışması için en iyi şekilde (optimum/ en iyileme) depolanırlar.
	4) Sorgu içersinde kullanılmazlar, sorgudan çağırılamazlar ( ama fonksiyonlar, sorgudan 
	çağrılırlar örnek: SELECT GETDATE() )

MS SQL server içinde hazır gelen saklı yordamlar:
SP_RENAME 'nesneAdı', 'yeniAdı' vt nesnelerinin adını değiştirmek için
*/
USE Bahçeişleri
GO 
CREATE VIEW MüşteriGör
AS
SELECT Adı,Soyadı FROM Müşteriler
-- Adını değiştirelim
SP_RENAME 'MüşteriGör','MüşterilerGörünümü'

/*
SP_CHANGEOWNER : VT nesnesinin sahibini değiştir ??
SP_CHANGEOBJECTOWER : VT nesnesinin sahibini değiştirir ??
SP_CHANGEBOWNER : VT sahibini değiştirir ??
SP_HELP : herhangi VT nesnesi hakkında bilgi
SP_HELPTEXT : VT nesnesini oluşturan sql script verir
*/
SP_HELP MüşterilerGörünümü
SP_HELP Müşteriler

SP_HELPTEXT MüşterilerGörünümü
