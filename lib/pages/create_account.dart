import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/login_widgets.dart';



class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() =>
      _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController emailTextControllerL = TextEditingController();
  final TextEditingController passwordTextControllerL = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Image.network(
              'https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MXwxfHNlYXJjaHw4fHx3aW50ZXJ8ZW58MHx8fHwxNjkxOTQ1Mzg3fDA&ixlib=rb-4.0.3&q=80&w=1080',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 220, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 8, 4),
                                        child: Text(
                                          'Welcome',
                                         style: GoogleFonts.playfairDisplay(
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF8B97A2),
                                              ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.5,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              4, 0, 0, 0),
                                          child: Text(
                                            'Nice to have you!',
                                            style: GoogleFonts.playfairDisplay(
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                
                                // Email and Password TextFields
                                Padding(
                                
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 15),
                                  child: MyTextField(
                                    controller: emailTextControllerL,
                                    obscureText: false,
                                    hintText: 'Email',
                                  ),
                                ),
                                Padding(
                                 padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 18),
                                  child: MyTextField(
                                    controller: passwordTextControllerL,
                                    obscureText: true,
                                    hintText: 'Password',
                                  ),
                                ),
                                  Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 18),
                                      child:
                                Padding(
                                  
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    minimumSize: Size(300, 50),
  ),
  onPressed: () async {
    
  },
  child: Text(
    'Create Account',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
  ),
),),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                  child: Text(
                                    'Or Continue Using',
                                    style: GoogleFonts.playfairDisplay(
                                      textStyle: TextStyle(
                                        color: Color(0xFF1F1F1F),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   GoogleLoginButton(
                                      icon: FontAwesomeIcons.google,
                                      iconSize: 24,
                                      onPressed: () {Navigator.of(context).pushNamed('/login');
                                       },
                                    ),

                                    GoogleLoginButton(
                                      icon: FontAwesomeIcons.facebookF,
                                      iconSize: 24,
                                      onPressed: () {},
                                    ),

                                    GoogleLoginButton(
                                      icon: FontAwesomeIcons.idCard,
                                      iconSize: 28,
                                      onPressed: () {},
                                      
                                    ),
                                  ],
                                ),
                                Opacity(
                                  opacity: 0.9,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        
                                      },
                                      child: Text(
                                        'Already have an account?',
                                        style: GoogleFonts.playfairDisplay(
                                          textStyle: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
