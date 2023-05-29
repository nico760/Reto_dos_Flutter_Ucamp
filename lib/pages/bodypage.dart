import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children:  [
            CircleAvatar(
            radius: 70,
            child: ClipOval( 
            child: Image.asset(
            'images/nico.jpg',
            fit: BoxFit.cover, // Adjust the fit property as needed
            )
            )
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child:  Center(
                child: Text('Flutter Developer',
                style: GoogleFonts.roboto(
            fontSize: 24
            ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: cardCustom(screenWidth)
              ),
            const SizedBox(height: 20),
            const Center(
              child: Text('Proyectos', 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro'
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.science),
              title: Text('Biosensor CEA'),
            ),
            const ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Extractos de productos agroindustriales'),
            ),
            const ListTile(
              leading: Icon(Icons.biotech),
              title: Text('Modelamiento en baterías'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Habilidades',textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                  SizedBox(height: 10),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text('Comunicación'),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text('Pensamiento crítico'),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text('Lógica'),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text('Liderazgo'),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Text('Investigación'),
                  ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/frame.png'),
                      fit: BoxFit.contain
                      )
                  ),
                ),
              ],
            )
            ]
          ),
      ),
      );
  }

  Widget cardCustom(double screenWidth) {
    
    return  SizedBox(
      width: screenWidth/1.3,
      child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.person),
                              Text('Nicolás Montoya Escobar')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.work),
                              Padding(
                                padding: EdgeInsets.only(left:5.0),
                                child: Text('Ingeniero en Nanotecnología'),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.phone),
                              Padding(
                                padding: EdgeInsets.only(left:3.0),
                                child: Text('+57 3206680769'),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
    );
  }
}