
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TestYapisi BenimTestim= new TestYapisi();


class TestYapisi{
  // nitelikler özellikler
  int aktif_sorum=0;
  int Icon1=0;
  List< Icon> d_y_bilgisi=[];
  List<Soru> Sorular =[
    Soru(soru_metni: "1) Web sayfasında resim göstermek için kullanılan etiket hangisidir?", a: "picture", b: "image",c: "img",d: "src",cevap: "C"),
    Soru(soru_metni: "2) <b> etiketi yazıları kalın kazmak için kullanılır, bu etiketten başka hangi etiket yazıları kalın yapar?", a: "<strong>", b: "<dar>", c: "<black>", d: "<emp>", cevap: "A"),
    Soru(soru_metni: "3) Etiketler ve yazılar hangi bölüme yazılırsa direkt olarak görüntülenmez?", a: "<html>", b: "<head>", c: "<title>", d: "<body>", cevap:"B"),
    Soru(soru_metni: "4) Web sayfalarında yatay çizgi eklemek için hangi etiket kullanılır?", a: "<hr>", b: "<line>", c: "<body>", d: "<tr>", cevap: "A"),
    Soru(soru_metni: "5) Html sayfalarında kullanılan ilk etiket hangisidir?", a: "<head>", b: "<title>", c: "<html>", d: "<document>", cevap: "C"),
    Soru(soru_metni: "6) Tabloya satır eklemek için hangi etiket kullanılır?", a: "<td></td>", b: "<cr></cr>", c: "<th></th>", d: "<tr></tr>", cevap: "D"),
    Soru(soru_metni: "7) Sırasız liste oluşturmak için kullanılan etiket hangisidir?", a: "<list>", b: "<nl>", c: "<ul>", d: "<ol>", cevap: "C"),
    Soru(soru_metni: "8)Sıralı liste oluşturmak için kullanılan etiket hangisidir ?", a: "< dl>", b: "< ol>", c: "< list>", d: "< ul>", cevap: "B"),
    Soru(soru_metni: "9)İtalic (Eğik) yazı etiketi hangisidir ?", a: "< ii>", b: "< italics>", c: "< italic>", d: "< i>", cevap: "D"),
    Soru(soru_metni: "10)Zemin rengini değiştirmek için kullanılan etiket hangisidir ?", a: "< body color=”yellow”>", b: "< body bgcolor=”yellow”>", c: "< background>yellow< /background>", d: "< body background=”yellow”>", cevap: "B"),
    Soru(soru_metni: "11)En küçük başlık yazma etiketi hangisidir ?", a: "< heading>", b: "< h6>", c: "< h1>", d: "< head>", cevap: "B"),
    Soru(soru_metni: "12)Html’de bir alt satıra geçmek için hangi html etiketi kullanılır ?", a: "< br>", b: "< lb>", c: "< break>", d: "< newline>", cevap: "A"),
    Soru(soru_metni: "13)Html’de onay kutusu oluşturmak için kullanılan etiket hangisidir ?", a: "< checkbox>", b: "< input type=”checkbox”>", c: "< input=checkbox>", d: "< input checkbox>", cevap: "B"),
    Soru(soru_metni: "14)Hangi html kodu doğru bir şekilde kullanılmıştır ?", a: "< font colour=”red”>", b: "< font color=”red”>", c: "< red>< font>", d: "Hepsi", cevap: "B"),
    Soru(soru_metni: "15)Font etiketi ile beraber kullanılan parametre hangisidir ?", a: "size", b: "face", c: "color", d: "Hepsi", cevap: "D"),
  ];
  //method
  //sonraki soruya geç
void sonraki_soruya_gec(){
  if(Sorular.length-1 > aktif_sorum) {
    aktif_sorum++;
  }else {
    aktif_sorum=0;

  }
  }

  // soru metni yaz
String soru_metni_yaz(){
  return Sorular[aktif_sorum].Soru_Metni;
}
String a_sikki_yaz(){
  return Sorular[aktif_sorum].A_Sikki;
}
  String b_sikki_yaz(){
    return Sorular[aktif_sorum].B_Sikki;
  }
  String c_sikki_yaz(){
    return Sorular[aktif_sorum].C_Sikki;
  }
  String d_sikki_yaz(){
    return Sorular[aktif_sorum].D_Sikki;
  }
  void cevabi_kontrol_et(String k_cevabi){
   if(Sorular[aktif_sorum].Cevap== k_cevabi){
     d_y_bilgisi.add(Icon(Icons.mood, color: Colors.green,),);
  }
   else  {
    d_y_bilgisi.add(Icon(Icons.mood_bad, color: Colors.red,),);
  }
   sonraki_soruya_gec();
   }



}


//YAPI
class Soru{
  //nitelikler ve özellikleri
String Soru_Metni="";
String A_Sikki="";
String B_Sikki="";
String C_Sikki="";
String D_Sikki="";
String Cevap="";
//yapıcı method
Soru({required String soru_metni,required String a,required String b,required String c,required String d,required String cevap}){
  Soru_Metni= soru_metni;
  A_Sikki= a;
  B_Sikki= b;
  C_Sikki= c;
  D_Sikki= d;
  Cevap= cevap;
}
}