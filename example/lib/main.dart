import "dart:math";

import "package:flutter/material.dart";
import "package:avatar_maker/avatar_maker.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avatar Maker Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Avatar Maker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Use your Avatar Maker anywhere\nwith the below widget",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          AvatarMakerAvatar(
            backgroundColor: Colors.grey[200],
            radius: 100,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "and create your own page to customize them using our widgets",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Spacer(flex: 2),
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.edit),
                    label: Text("Customize"),
                    onPressed: () => Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => NewPage())),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: AvatarMakerAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                width: min(600, _width * 0.85),
                child: Row(
                  children: [
                    Text(
                      "Customize:",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Spacer(),
                    AvatarMakerSaveWidget(),
                    AvatarMakerRandomWidget(),
                    AvatarMakerResetWidget(),
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 400,
                color: Colors.grey[200],
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      print("tapped *0*0**0*0*");
                      AvatarMakerCustomizer.currentController!
                              .selectedOptions[PropertyCategoryIds.HairColor] =
                          HairColors.values[index];
                      print(AvatarMakerCustomizer.currentController!
                          .selectedOptions[PropertyCategoryIds.HairColor]);
                      print(AvatarMakerCustomizer
                          .currentController!.selectedOptions
                          .toString());
                      print(AvatarMakerCustomizer.currentController!
                          .getStoredOptions());

                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: backgroundColorsList[index],
                      ),
                    ),
                  ),
                  itemCount: backgroundColorsList.length,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: AvatarMakerCustomizer(
                  scaffoldWidth: min(600, _width * 0.85),
                  autosave: false,
                  theme: AvatarMakerThemeData(
                      boxDecoration: BoxDecoration(boxShadow: [BoxShadow()])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Color> backgroundColorsList = [
    Color(0xFFFFFFFF), // White
    Color(0xFFE6E6E6), // Light Gray
    Color(0xFF929598), // Gray
    Color(0xFFB3B3B3), // Dull Gray
    Color(0xFF7C7C7C), // Subdued Gray
    Color(0xFF4E4E4E), // Dark Gray
    Color(0xFF323232), // Muted Dark Gray
    Color(0xFF262E33), // Black

    Color(0xFFFFFFB1), // Pastel Yellow
    Color(0xFFCDDC39), // Lemon
    Color(0xFFE3CC6F), // Muted Yellow Ochre One
    Color(0xFFE2C44B), // Muted Yellow Ochre Two

    Color(0xFF65C9FF), // Light Blue
    Color(0xFFB1E2FF), // Pastel Blue
    Color(0xFF63B3CB), // Calm Sky Blue
    Color(0xFF5AA9C8), // Muted Teal
    Color(0xFF6A9AB5), // Dull Cerulean Blue
    Color(0xFF5199E4), // Blue
    Color(0xFF4682B4), // Steel Blue
    Color(0xFF25557C), // Dark Blue

    Color(0xFFA7FFC4), // Pastel Green
    Color(0xFF6A9770), // Subdued Green
    Color(0xFF71E28A), // Calm Aquamarine One
    Color(0xFF2CBA4B), // Calm Aquamarine Two
    Color(0xFF3D6E70), // Deep Jungle Green
    Color(0xFF5C876F), // Forest Moss Green
    Color(0xFF405D46), // Olive Forest Green
    Color(0xFF1B5E20), // Green

    Color(0xFFFFDEB5), // Pastel Orange
    Color(0xFFF88132), // Soft Tangerine
    Color(0xFFC88A69), // Soft Coral Orange
    Color(0xFFE64A19), // Orange
    Color(0xFFAB6A35), // Warm Amber

    Color(0xFFFF488E), // Pink
    Color(0xFFCF5679), // Mellow Hot Pink
    Color(0xFFE76A7A), // Watermelon Red
    Color(0xFFFFAFB9), // Pastel Red
    Color(0xFFFF5C5C), // Red
    Color(0xFFB23A48), // Deep Red
    Color(0xFF70323C), // Subdued Burgundy
    Color(0xFF97423B), // Warm Brick Red

    Color(0xFF8E24AA), // Purple
    Color(0xFFD81B60), // Fuchsia
    Color(0xFF8A5082), // Dusty Purple
    Color(0xFF9B7BCC), // Muted Vivid Violet
    Color(0xFF6457A6), // Dull Ultramarine Blue
    Color(0xFF6C4B93), // Dusty Royal Purple

    Color(0xFF3C4F5C), // Heather
  ];
}
