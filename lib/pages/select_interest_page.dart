import 'package:flutter/material.dart';
import 'package:getskills_flutter/home_screen.dart';
import '../common_widgets/header.dart';

class SelectInterestPage extends StatefulWidget{
    const SelectInterestPage({Key? key}) : super(key: key);

    @override
    State<SelectInterestPage> createState() => _SelectInterestPageState();
}
class _SelectInterestPageState extends State<SelectInterestPage> {
    @override
    Widget build(BuildContext context){
        Size size = MediaQuery.of(context).size;
    
        return Scaffold(
            body: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                        Header(),
                        
                        Container(
                            alignment: Alignment.center,
                            margin:EdgeInsets.symmetric(horizontal:50, vertical: 50),
                            child: GestureDetector(
                                onTap: () => {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))
                                },
                                child: Text(
                                    "Ready To Go!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        color: Colors.blue[600],
                                    ),
                                ),
                            )
                        ),
                    ],
                ),
            ),
        );
    }
}