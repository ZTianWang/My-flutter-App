import 'package:flutter/material.dart';
import 'package:getskills_flutter/home_screen.dart';

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
                child: Text("select interest page"),
            ),
        );
    }
}