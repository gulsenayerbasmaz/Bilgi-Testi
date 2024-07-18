import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ÇoktanSeçmeli.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.black87),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                     BenimTestim.soru_metni_yaz(),
                      style: GoogleFonts.ebGaramond(color: Colors.white, fontSize: 40.0,),
                    ),
                  ),
                ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  BenimTestim.cevabi_kontrol_et('A');
                                });
                              },
                              child: Text(BenimTestim.a_sikki_yaz(),
                                style: GoogleFonts.ebGaramond(color: Colors.white, fontSize: 25.0,),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  BenimTestim.cevabi_kontrol_et('B');
                                });
                              },
                              child: Text(BenimTestim.b_sikki_yaz(),
                                style: GoogleFonts.ebGaramond(color: Colors.white, fontSize: 25.0,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                BenimTestim.cevabi_kontrol_et('C');
                              });
                            },
                            child: Text(BenimTestim.c_sikki_yaz(),
                              style: GoogleFonts.ebGaramond(color: Colors.white, fontSize: 25.0,),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                BenimTestim.cevabi_kontrol_et('D');
                              });
                            },
                            child: Text(BenimTestim.d_sikki_yaz(),
                              style: GoogleFonts.ebGaramond(color: Colors.white, fontSize: 25.0,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(children: BenimTestim.d_y_bilgisi,),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
