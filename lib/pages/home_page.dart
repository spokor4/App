import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../utils/theme.dart';
import '../widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx0ZWF8ZW58MHx8fHwxNjkxOTkzMjk1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                    width: double.infinity,
                    height: 255,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 160, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              child: Text(
                                'App Shortcuts',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.playfairDisplay(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 15, 0, 20),
                            child: Text(
                              'Check by pressing card',
                              style: GoogleFonts.playfairDisplay(
                                textStyle: TextStyle(
                                  color: MyTheme.lightTheme.cardColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GridView(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1.4,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  // Profile
                                  ShortcutBlcok(
                                    color: Color.fromRGBO(225, 154, 154, 1),
                                    onTap: () {
                                             Navigator.of(context)
                                            .pushNamed('/profile');
                                    },
                                    iconData: FontAwesomeIcons.heart,
                                    text: "Profile",
                                  ),

                                  // Maps
                                  ShortcutBlcok(
                                    color: Color.fromRGBO(72, 85, 146, 1),
                                    onTap: () {
                                             Navigator.of(context)
                                            .pushNamed('/settings');
                                    },
                                    iconData: FontAwesomeIcons.sass,
                                    text: "Settings",
                                  ),

                                  // Settings
                                  ShortcutBlcok(
                                    color: Color.fromRGBO(91, 197, 113, 1),
                                    onTap: () {
                                            Navigator.of(context)
                                            .pushNamed('/maps');
                                    },
                                    iconData: FontAwesomeIcons.map,
                                    text: "Maps",
                                  ),

                                  ShortcutBlcok(
                                    color: Color.fromRGBO(223, 137, 45, 1),
                                    onTap: () {
                                      Navigator.of(context)
                                            .pushNamed('/createAccount');
                                      
                                    },
                                    iconData: FontAwesomeIcons.heart,
                                    text: "To Be Added",
                                  ), // Settings
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
