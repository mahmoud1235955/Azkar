import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<String> tasbeh = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "أستغفر الله ",
    "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "الْلَّهُ أَكْبَرُ",
    "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.",
    "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ",
    "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",
    "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.",
  ];
  int index = 0;
  int counter = 0;
  int round = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color color=Color(0xff9c682e);
      backgroundColor: Color(0xff9c682e),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xff9e9e9e),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (index >= 1) {
                        index--;
                        counter = 0;
                        round = 0;
                      }
                    });
                  },
                  icon: Icon(Icons.chevron_left, size: 30),
                ),
                Expanded(
                  child: Text(
                    tasbeh[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      if (index < tasbeh.length - 1) {
                        index++;
                        counter = 0;
                        round = 0;
                      }
                    });
                  },
                  icon: Icon(Icons.chevron_right, size: 30),
                ),
              ],
            ),
          ),
          Text(
            "$counter/33",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          SizedBox(height: 20),
          Text("Round $round"),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  index = 0;
                  round = 0;
                  counter = 0;
                });
              },
              child: Text("Reset"),
            ),
          ),
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              setState(() {
                if (counter == 33) {
                  counter = 0;
                  round++;
                } else {
                  counter++;
                }
              });
            },
            child: CircleAvatar(
              radius: 200,
              backgroundColor: Color(0xff2196f3),
              child: Text(
                "سبح",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
