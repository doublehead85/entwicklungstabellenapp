import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        textTheme: TextTheme(
        headline1: TextStyle(fontSize: 16.0),
    ),
        ),
      title: 'Entwicklungstabellenapp',
      home: HomeScreen(), // Use a custom widget as the home screen
    );
  }
}

// A custom widget that contains the buttons and the navigator
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entwicklungstabellenapp'),
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: EdgeInsets.only(top: 10),),

            Text(
              'Entwickungstheorien',
              style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklungsaufgaben",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                // Navigate to the new screen using a named route.
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => EntwicklungsaufgabenScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Psychosexuelle Entwicklung nach Freud",
                  style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => PsychosexuelleEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),


            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Psychosoziale Entwicklung nach Erikson", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => PsychosozialeEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),


            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung der Identität nach Marcia", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => IdentitaetEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung der Kognition nach Piaget", style: TextStyle(color: Colors.black) ),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => KognitiveEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung des moralischen Urteils nach Kohlberg", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => MoralentwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            Text(
              'Entwickungstabellen',
              style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),



            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung der Motorik", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => MotorikEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung der Sprache", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => SprachEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),),

            TextButton
              (style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(top: 7)), ),
              child: Text("Entwicklung der Geschlechteridentität", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context, // Use the context of the HomeScreen widget
                  MaterialPageRoute(builder: (context) => GeschlechtsidentitaetEntwicklungScreen()),
                );
              },
            ),

            Padding(
              padding: EdgeInsets.only(top: 5),),
          ],
        ),
        ),
      ),
    );
  }
}

class EntwicklungsaufgabenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklungsaufgaben'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "Entwicklungsaufgaben nach Havighurst",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context, // Use the context of the HomeScreen widget
                    MaterialPageRoute(builder: (context) => HavighurstScreen()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Entwicklungsaufgaben nach Hurrelmann",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, // Use the context of the HomeScreen widget
                      MaterialPageRoute(builder: (context) => HurrelmannScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

class PsychosexuelleEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Psychosexuelle Entwicklung', style: TextStyle(
            fontSize: 18.0, // kleinere Schriftgröße
          ),),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "Orale Phase 0-1 Jahr",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => freudpopupOralePhase(context),
                  );
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Anale Phase 1-3 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => freudpopupAnalePhase(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),

                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Phallische Phase 4-6 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => freudpopupPhallischePhase(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),

                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Latenzphase 7-12 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => freudpopupLatenzPhase(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),

                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Genitale Phase 12-18 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => freudpopupGenitalePhase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class PsychosozialeEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Psychosoziale Entwicklung'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "1. Urvertrauen vs Urmisstrauen 1. LJ",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => eriksonpopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "2. Autonomie vs Scham und Zweifel 1.-3. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => eriksonpopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3. Initiative vs. Schulgefühl 3.-5. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => eriksonpopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "4. Werksinn vs. Minderwertigkeitsgefühl 6. LJ-Pubertät",
                    style: TextStyle(color: Colors.black,
                          fontSize: 13.0),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => eriksonpopup4phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "5. Identität vs. Identitätsdiffusion Jugendalter",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => eriksonpopup5phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6. Intimität vs. Isolierung frühes Erwachsenenalter",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => eriksonpopup6phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}


class KognitiveEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kognitive Entwicklung'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "1. Sensomotorische Phase (0-2 Jahre)",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => piagetpopupsensomotorischePhase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "2. Präoperationale Phase (2 - 7 Jahre)",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => piagetpopuppraeoperationalePhase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3. Konkret-Operationale Phase (7 - 12 Jahre)",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => piagetpopupkonkretoperationalePhase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "4. Formal-Operationale Phase (ab 12 Jahre)",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => piagetpopupformaloperatorischePhase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class MoralentwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklung der Moral'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "1. Orientierung an Gehorsam und Strafe",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => kohlbergpopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "2. Orientierung an eigenen Bedürfnissen",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => kohlbergpopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3. Orientierung an zwischenmenschlichen Beziehungen",
                    style: TextStyle(color: Colors.black,
                          fontSize: 13.0)
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => kohlbergpopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "4. Orientierung an Ordnungs- und Pflichtbewusstsein",
                    style: TextStyle(color: Colors.black,
                        fontSize: 13.0),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => kohlbergpopup4phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "5. Orientierung am Sozialvertrag",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => kohlbergpopup5phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6. Orientierung an universellen, ethischen Prinzipien",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => kohlbergpopup6phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class MotorikEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Motorische Entwicklung'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "Grobmotorik",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context, // Use the context of the HomeScreen widget
                    MaterialPageRoute(builder: (context) => GrobmotorikScreen()),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Feinmotorik",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, // Use the context of the HomeScreen widget
                      MaterialPageRoute(builder: (context) => FeinmotorikScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

class SprachEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sprachliche Entwicklung'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "0-3 Monate",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => sprachepopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6-12 Monate",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "1-1,5 Lebensjahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "1,5 -2 Lebensjahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup4phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "2 - 4 Lebensjahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup5phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "4 - 5 Lebensjahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup6phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6 - 11 Lebensjahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => sprachepopup7phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class GeschlechtsidentitaetEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklung der Geschlechteridentität',
            style: TextStyle(fontSize: 14.0)),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "0-2 Jahre",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => geschlechtidentpopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3-6 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => geschlechtidentpopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "7-11 Jahre",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => geschlechtidentpopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Pubertät und Adoleszenz",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => geschlechtidentpopup4phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}


class HurrelmannScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklungsaufgaben des Jugendalters', style: TextStyle(
              fontSize: 13.0)),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "Qualifizieren",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => hurrelmannpopupQualifizieren(context),
                  );
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Konsumieren",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => hurrelmannpopupKonsumieren(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Binden",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => hurrelmannpopupBinden(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "Partizipieren",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => hurrelmannpopupPartizipieren(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

class HavighurstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Havighurst Entwicklungsaufgaben', style: TextStyle(
        fontSize: 15.0) ),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "0.-2.LJ",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => havighurstpopup0bis2LJ(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "2.-4. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => havighurstpopup2bis4LJ(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "5.-7. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => havighurstpopup5bis7LJ(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6.-12. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => havighurstpopup6bis12LJ(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "13.-17. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => havighurstpopup13bis17LJ(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "18.-22. LJ",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => havighurstpopup18bis22LJ(context),
                    );
                  },
                ),
              ),

            ],
          ),
        )
        )
    );
  }
}

class GrobmotorikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklung der Grobmotorik',
          style: TextStyle(fontSize: 18.0),),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "0-15 Monate",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => grobmotorikpopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "15 Monate bis 3. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => grobmotorikpopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3.-6. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => grobmotorikpopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6. bis 12. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => grobmotorikpopup4phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "ab 12. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => grobmotorikpopup5phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class FeinmotorikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entwicklung der Feinmotorik',
        style: TextStyle(
        fontSize: 18.0)),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "0-15 Monate",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => feinmotorikpopup1phase(context),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "15 Monate bis 3. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => feinmotorikpopup2phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "3.-6. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => feinmotorikpopup3phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "6. bis 12. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => feinmotorikpopup4phase(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "ab 12. Lebensjahr",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => feinmotorikpopup5phase(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        )
    );
  }
}

class IdentitaetEntwicklungScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Identitätsentwicklung'),
          backgroundColor: Colors.red[400],

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(top: 7),
                  ),
                ),
                child: Text(
                  "diffuse Identität",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => marciapopupdiffuseIdentitaet(context),
                  );
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "übernommene Identität",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => marciapopupuebernommeneIdentitaet(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "erarbeitete Identität",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => marciapopuperarbeiteteIdentitaet(context),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.only(top: 7),
                    ),
                  ),
                  child: Text(
                    "explorative Identität",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => marciapopupexplorativeIdentitaet(context),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget havighurstpopup0bis2LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
    content: SingleChildScrollView(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('''
                    Bindung 
                    (social 
                    attachment)
            
                    Objektpermanenz 
                    
                    Sensumotorische 
                    Intelligenz 
                    
                    Motorische 
                    Grundfunktionen'''),
        ],
      ),
    ),
  );
}

Widget havighurstpopup2bis4LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Selbstkontrolle (vor allem 
        motorisch, Stuhlgang)
        
        Sprachentwicklung
        
        Phantasie und Spiel
        
        Verfeinerung motorischer 
        Funktionen
                  '''),
      ],
    ),
  )
  );
}

Widget havighurstpopup5bis7LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Ausprobieren von 
        Geschlechterrollen
        
        Entwicklung einer 
        kindlichen Moral (gut und 
        richtig)
        
        anschauliches Denken
        
        Spiel in Gruppen
        
        Tagesablauf verstehen
                  '''),
      ],
    ),
  )
  );
}

Widget havighurstpopup6bis12LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Soziale Kooperation
        
        Selbstbewußtsein
        
        Erwerb der 
        Kulturtechniken (Lesen, 
        Schreiben etc.)
        
        Spielen und Arbeiten im 
        Team
                  '''),
      ],
    ),
  )
  );
}

Widget havighurstpopup13bis17LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Körperliche Reifung
        
        logisches Denken 
        
        Gemeinschaft mit 
        Gleichaltrigen
        
        intime Beziehungen 
        eingehen können
                  '''),
      ],
    ),
  )
  );
}

Widget havighurstpopup18bis22LJ(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Autonomie von den 
        Eltern
        
        Identität in der 
        Geschlechtsrolle
        
        stabiles und eigenes 
        moralisches Bewußtsein
        
        Berufswahl
                  '''),
      ],
    ),
  )
  );
}

Widget hurrelmannpopupQualifizieren(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Erwerb von Sach-, Selbst- 
        und Sozialkompetenzen
        
        Erkennen individueller 
        Stärken
        
        Findung einer 
        ausfüllenden 
        Tagesbeschäftigung 
        
        Ziel
        Verantwortung
        für eigenes Leben
                  '''),
      ],
    ),
  )
  );
}

Widget hurrelmannpopupKonsumieren(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        eigene Körperkraft 
        regenerieren können
        
        Gesundheitserhaltung
        
        kritische Haltung zur 
        Warenwelt aufbauen
        
        Suchtverhalten regulieren 
        und vermeiden
        
        Ziel: für sich selber 
        sorgen können
                  '''),
      ],
    ),
  )
  );
}

Widget hurrelmannpopupBinden(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Akzeptieren des eigenen 
        Körpers
        
        Aufbau einer 
        Geschlechteridentität
        
        stabile sexuelle Vorlieben
        
        Ablösung von den Eltern
        
        Beziehungsaufbau zu 
        Gleichaltrigen
        
        Ziel: stabile soziale 
        Beziehungen
                  '''),
      ],
    ),
  )
  );
}

Widget hurrelmannpopupPartizipieren(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Aufbau eigenständiges 
        Werte- und Normen-
        systems
        
        Beteiligung an 
        Entscheidungsprozessen
        
        Ziel: demokratisch, aktive 
        Bürgerschaft 
                  '''),
      ],
    ),
  )
  );
}

Widget freudpopupOralePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lustzentrum: Lippen und 
        Mund
        
        Lustgewinn durch 
        Saugen und Lutschen 
         
        später Beißen und Kauen
        
        Welterkundung mit dem 
        Mund
        
        Aufbau von Urvertrauen
                  '''),
      ],
    ),
  )
  );
}

Widget freudpopupAnalePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lustzentrum: 
        Schließmuskel
        
        Lustgewinn durch 
        Ausscheidung und 
        Zurückhaltung
        
        Aufbau einer 
        persönlichen Hygiene-
        vorstellung
                  '''),
      ],
    ),
  )
  );
}

Widget freudpopupPhallischePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lustzentrum: 
        Geschlechtsorgane
        
        Lustgewinn durch 
        Berührung und Erkund-
        ung
        
        Interesse am eigenen 
        und anderen Geschlecht
        
        Aufbau einer ersten 
        Geschlechteridentität
                  '''),
      ],
    ),
  )
  );
}

Widget freudpopupLatenzPhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lustzentrum: soziale 
        Anerkennung durch 
        Erwachsene, Gleich-
        altrige
        
        Lustgewinn durch Lob für 
        erwünschtes Verhalten
        
        Spiele mit gleichem 
        Geschlecht
        
        Aufbau einer sozialen 
        Geschlechteridentität
                  '''),
      ],
    ),
  )
  );
}

Widget freudpopupGenitalePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lustzentrum: Genitalien 
        und Haut 
        
        Lustgewinn durch 
        Berührung und Stimu-
        lation
        
        zunächst eigene Erkund-
        ung, 
        dann Geschlechtspartner
        
        Abgrenzung von Eltern
        
        Aufbau eines eigenen
        Geschlechterrollenbildes 
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung am 
        Elternwillen
        
        Befriedigung der 
        Grundbedürfnisse
        
        Aufbau eines Urvertrauen 
        zu anderen Menschen
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        
        Orientierung am eigenen 
        Willen
        
        größere, motorische 
        Unabhängigkeit 
        (Ausscheidung)
        
        Trotzphase
        
        Aufbau eines eigenen 
        Willens
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        
        Orientierung am 
        Interesse zur Umwelt 
        (andere Kinder und 
        Erwachsene)
        
        Erweiterung der 
        Selbstständigkeit um 
        Eigeninitiative
        
        Aufbau eines 
        explorierenden Willens 
        und einer ersten 
        Kooperationsbereitschaft
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        
        Orientierung an der 
        Erwartung von Lehrern 
        und Mitschüler*innen 
        
        Wunsch und Wille gut 
        und nützlich zu sein
        
        Erfüllung von Aufgaben 
        für Lob durch Lehrer und 
        Eltern 
                
        Aufbau einer 
        Arbeitsmoral
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup5phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an 
        Gleichaltrigen
        
        Experimentieren in der 
        Peer-Group
        
        Aufbau einer eigenen 
        Identität
         
                  '''),
      ],
    ),
  )
  );
}

Widget eriksonpopup6phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an intimen 
        Partnern
        
        Exploration von 
        Beziehungs- und 
        Lebensmodellen
        
        Aufbau einer stabilen 
        Geschlechter- und 
        Partnerschaftsrolle
                  '''),
      ],
    ),
  )
  );
}

Widget marciapopupdiffuseIdentitaet(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        geringe Erkundung
        
        geringes Festhalten an /
        Einverständnis mit 
        bestimmten Werte und 
        Normen
        
        Perspektiv- und 
        Antriebslosigkeit
                  '''),
      ],
    ),
  )
  );
}


Widget marciapopupuebernommeneIdentitaet(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        geringe Erkundung
        
        starkes Festhalten an 
        bestimmten Werte und 
        Normen
        
        unkritische Übernahme 
        bestehender Weltbilder
        und Werte
                  '''),
      ],
    ),
  )
  );
}

Widget marciapopuperarbeiteteIdentitaet(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        starke Erkundung
        
        starkes Festhalten an 
        bestimmten Werte und 
        Normen
        
        gereiftes Selbst- und 
        Weltbild
                  '''),
      ],
    ),
  )
  );
}

Widget marciapopupexplorativeIdentitaet(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        starke Erkundung
        
        geringes Festhalten an /
        Einverständnis mit 
        bestimmten Werten 
        und Normen
        
        Selbst- und Weltbild im 
        Erkundungsprozess
                  '''),
      ],
    ),
  )
  );
}

Widget piagetpopupsensomotorischePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Erwerb grundlegender 
        Motorik und Sensorik
        
        Erwerb von 
        Objektpermanenz
                  '''),
      ],
    ),
  )
  );
}

Widget piagetpopuppraeoperationalePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Kinder = naive Realisten
        
        Augenschein 
        
        Animistisches Denken
        
        Magisches Denken
        
        Anthropomorphismus
        
        Egozentrismus
        
        Zentrierung
        
        (Mengen- oder Volumen-) 
        Invarianz
                  '''),
      ],
    ),
  )
  );
}

Widget piagetpopupkonkretoperationalePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Entwicklung logischen 
        Denkens (an konkrete 
        Objekte gebunden)
        
        Erwerb der Fähigkeit zur 
        Perspektivübernahme
        
        Erwerb eines Konzepts 
        von Kausalität
        
        Ablegen von Animismus, 
        Anthropomorphismus 
        und magischen Denkens
                  '''),
      ],
    ),
  )
  );
}

Widget piagetpopupformaloperatorischePhase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Entwicklung der Fähigkeit 
        zu deduktivem Denken
        
        Entwicklung des 
        abstrakten logischen 
        Denkens
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an Strafe 
        und Gehorsam
        
        Vermeiden von 
        persönlichem Leid
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an eigenen 
        Bedürfnissen
        
        Abwägungen von Kosten 
        und Nutzen
        
        „Eine Hand wäscht die 
        andere“
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Good-boy, Nice-girl
        
        Orientierung an 
        personengebundener 
        Zustimmung
        
        Soziale Öffnung des 
        Denkens
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an Recht 
        und Gesetz
        
        Autoritätshörigkeit
        
        Pflichtbewusstsein
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup5phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Gesetze und Regeln 
        verhandelbar
        
        Abweichungen sind 
        möglich 
        
        Regeln sollen für alle 
        gerecht sein
        
        Orientierung an soz. 
        Aushandlungsprozessen
                  '''),
      ],
    ),
  )
  );
}

Widget kohlbergpopup6phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Orientierung an 
        universellen ethischen 
        Standards
        
        Gerechtigkeit, 
        Gegenseitigkeit, 
        Gleichheit
        
        Menschenwürde      
        
        nur von wenigen erreicht
                  '''),
      ],
    ),
  )
  );
}

Widget grobmotorikpopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        0-2 Monat: Kopf in 
        Bauchlage
        
        2-4 Monat: aufgerichteter 
        Brustkorb 
        
        4-6 Monat: Umdrehen
        
        6-8 Monat: Krabbeln
        
        8-15 Monat: Stehen, 
        Hochziehen, Gehen
                  '''),
      ],
    ),
  )
  );
}

Widget grobmotorikpopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        zunächst wackelnde und 
        „tappsige“ Bewegungen
        zunehmend flüssiger und 
        stabiler

        Integration bekannter 
        Bewegungsmuster zu 
        neuen Aktivitäten:
        Balancieren, Rennen,
        Treppen steigen, 
        Springen, 
        Körper beugen etc.
                  '''),
      ],
    ),
  )
  );
}

Widget grobmotorikpopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Beschleunigtes 
        Muskelwachstum
        Zunahme von Körperkraft
        
        Wandel von 
        Kleinkindform zur 
        Schulkindform
        
        Verschwinden der 
        „tapsigen“ Bewegungen
        
        Leistungssinn: 
        Beweglichkeits- und 
        Geschicklichkeitsspiele,
        Ballspiele
        
        Gleichgewichtssinn: 
        Roller und Fahrrad, 
        Schlittschuhe usw. 
                  '''),
      ],
    ),
  )
  );
}

Widget grobmotorikpopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Zunahme Muskel- und 
        Körperkraft
        
        Bewegungsabläufe 
        schneller, präziser und 
        kraftvoller

        Komplexe und soziale 
        Bewegungsspiele
                  '''),
      ],
    ),
  )
  );
}

Widget grobmotorikpopup5phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        körperliche Reifung zum 
        Erwachsenenkörper
        Größen- und 
        Breitenwachstum
        Kraftzunahme

        Bandbreite körperlicher 
        Entwicklungen: 
        Couchkartoffel oder 
        Leistungssportler
                  '''),
      ],
    ),
  )
  );
}

Widget feinmotorikpopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        1. Vorform des Greifens: 
        Fuchteln oder Schlagen 
        in Richtung Gegenstand
        
        Zuwachs an Kraft in 
        Nacken-, Schulter- und 
        Armmuskulatur
        ca. 7 Monat präzises 
        Greifen möglich
        
        Arme unabhängig von 
        einander nutzbar
        
        Zunächst Faustgriff
        ab ca. 12 Monaten 
        Pinzettengriff
        danach Drei-Punkt-Griff
                  '''),
      ],
    ),
  )
  );
}

Widget feinmotorikpopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        lebenspraktische 
        Aufgaben: Waschen, 
        Anziehen, Zähne putzen,
        Essen mit Besteck
        
        zunehmend sicherer
        
        Malbewegungen 
                  '''),
      ],
    ),
  )
  );
}

Widget feinmotorikpopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        gerade Linien und 
        kleinere Figuren
        weniger runde Elemente
       
        Ausschneiden, Ausmalen
        
        Meisterung der 
        Alltagsaufgaben:
        Waschen, Essen, 
        Anziehen, Schuhe binden
                  '''),
      ],
    ),
  )
  );
}

Widget feinmotorikpopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Schriftsprache
        
        Werken und Basteln
        
        Umgang mit Pflanzen 
        und Tieren
        
        erste Mediennutzung
                  '''),
      ],
    ),
  )
  );
}

Widget feinmotorikpopup5phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Bandbreite 
        feinmotorischer 
        Interessen und 
        Begabungen:
        Grobmotoriker vs. Bastler
        
        verstärkte 
        Mediennutzung
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Schreiperiode
        7 Varianten des 
        Schreiens 
        z. B. Hunger, Langeweile
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Lallmonologe
        
        Aneinanderreihung von 
        Silben „BABAB"
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Einwortsätze
        
        Mit einem Wort wird 
        ganzer Satz gemeint
        
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Zwei- und Mehrwortsätze
        
        Wörter werden 
        aneinander gereiht
        
        erstes Fragealter
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup5phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Explosionsartiger 
        Zuwachs an Wörtern
        
        einfache Satzgefüge
        
        Grammatik immer besser
        
        Zweites Fragealter
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup6phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Festigung der Sprache
        
        jährlich ca. 500 Wörter
        
        Grammatik wird sicherer
        
        Sätze umfangreicher
        
        mit ca. 5 fundamentale
        Sprachentwicklung
        abgeschlossen 
                  '''),
      ],
    ),
  )
  );
}

Widget sprachepopup7phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Verfeinerung der Sprache
        
        Zerlegung in Wörter und 
        Buchstaben
        
        Schriftsprache
        
        formale Grammatikregeln
        
        Ober- und 
        Gattungsbegriffe
        
        Mehrsprachigkeit 
        möglich
                  '''),
      ],
    ),
  )
  );
}

Widget geschlechtidentpopup1phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        ab 3 Monat: 
        Unterscheidung von 
        Männer- und 
        Frauenstimmen
        
        9-12 Monate: 
        Unterscheidung 
        männlicher und 
        weiblicher Gesichter
        
        10-14 Monate: gezielte 
        Beobachtung von 
        Männlich und Weiblich
        
        Ende 2. LJ: Gegenstände 
        nach Geschlechter-
        kategorien (Jungen-
        Mädchen) sortiert
        Bevorzugung von 
        Spielzeug, was zu ihrem 
        Geschlecht passt
        Genitalien spielen noch 
        keine Rolle, eher visuelle 
        Merkmale
        
        Bis in 3 LJ: 
        geschlechtstypischen 
        Unterschiede noch nicht 
        bewusst
        Kategorie wie „Mann“ 
        und „Frau“ neben 
        anderen Kategorien
        
        noch keine 
        Geschlechterkonstanz
        Wechsel möglich
                  '''),
      ],
    ),
  )
  );
}

Widget geschlechtidentpopup2phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        3 Jahre: Unterscheidung 
        der Geschlechter gelingt 
        sicher
        Selbstzuordnung zu 
        einem Geschlecht
        
        Freude am Ordnen und 
        Unterscheiden 
        – männlich/weiblich
        orientiert an 
        Äußerlichkeiten
        
        Starke Stereotypisierung
        Nachahmung typisch 
        „männlichen“ und 
        „weiblichen“ Verhaltens 
        Häufiges Spiel in 
        gleichgeschlechtlichen 
        Gruppen
        
        
        Positive Bewertung der 
        eigenen 
        Geschlechterkategorie
        tlw. Abwertung der 
        anderen Kategorien
        
        5-6 J: 
        Geschlechterkonstanz
        Erste Anpassung der 
        Stereotypen: 
        Männer können auch…
                  '''),
      ],
    ),
  )
  );
}

Widget geschlechtidentpopup3phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Geschlechteridentität als 
        Teil der personalen 
        Identität: Ich bin...
        
        Zuordnung der Genitalien 
        zu Mann/Frau-Kategorien
        
        Ausgeprägte 
        Geschlechterkonstanz
        
        Erweiterung der 
        Stereotype auf Persön-
        lichkeitseigenschaften: 
        Männer und Frauen sind 
        so und so…
        
        Gemeinsamkeiten der 
        Geschlechter werden 
        deutlich
        weitere Unterschiede bei 
        Menschen werden 
        deutlich
        z.B. sozialer Status
        
        Geschlechteruntypisches 
        Verhalten negativ 
        bewertet
                  '''),
      ],
    ),
  )
  );
}

Widget geschlechtidentpopup4phase(BuildContext context) {
  return new AlertDialog(
    title: const Text(''),
  content: SingleChildScrollView(
  child: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('''
        Veränderungen eigener 
        Körper
        In-/Akzeptanz dessen 
        
        sexuelle Orientierung 
        (homo, hetero, bi)
        
        Auslotung eigener 
        Geschlechterrolle
         
        Fremd- und 
        Selbstbeurteilung:
        Hot or Not?
        
        weitere Unterschiede von 
        Menschen treten in 
        Vordergrund
        Infragestellung von 
        Stereotypen
                  '''),
      ],
    ),
  )
  );
}




