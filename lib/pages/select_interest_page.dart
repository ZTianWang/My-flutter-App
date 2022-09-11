import 'package:flutter/material.dart';
import 'package:getskills_flutter/home_screen.dart';
import '../common_widgets/header.dart';

import 'package:multi_select_flutter/multi_select_flutter.dart';

class SelectInterestPage extends StatefulWidget{
    const SelectInterestPage({Key? key}) : super(key: key);

    @override
    State<SelectInterestPage> createState() => _SelectInterestPageState();
}

class Category {
    final int id;
    final String name;

    Category({
        this.id = 0,
        this.name = "default",
    });
}

class _SelectInterestPageState extends State<SelectInterestPage> {
    @override
    Widget build(BuildContext context){
        Size size = MediaQuery.of(context).size;
        List<Category> categories = [
            Category(id: 1, name: "Finance"),
            Category(id: 2, name: "Business Startup"),
            Category(id: 3, name: "IT"),
            Category(id: 4, name: "Sustainability"),
            Category(id: 5, name: "Health"),
            Category(id: 6, name: "Math"),  
            Category(id: 7, name: "Test Category"),  
        ];
        final items = categories.map((category) => MultiSelectItem<Category>(category, category.name)).toList();
            
    
        return Scaffold(
            body: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                        const Header(),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                            child: Text(
                                "Before we satart, would you like to select some interests categories?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                ),
                                textAlign: TextAlign.left,
                            ),
                        ),                        
                        Container(
                            margin:const EdgeInsets.symmetric(horizontal:20, vertical: 20),
                            child: MultiSelectChipField(
                                items: items,
                                title: const Text("Categories"),
                                // scroll: true,
                                // searchable: true,
                                headerColor: Colors.blue.withOpacity(0.5),
                                // decoration: BoxDecoration(
                                //     border: Border.all(color:Colors.blue[700], width: 1.8),
                                // ),
                                onTap: (val){  
                                },
                            ),
                        ),
                        Container(
                            margin:const EdgeInsets.symmetric(horizontal:20, vertical: 20),
                            child: MultiSelectChipDisplay(
                                items: items,
                                alignment: Alignment.center,

                                onTap: (value) {
                                    Category clickedCategory = value as Category;
                                    print(clickedCategory.name);
                                    
                                }
                            ),
                        ),                        
                
                        Container(
                            alignment: Alignment.center,
                            margin:const EdgeInsets.symmetric(horizontal:50, vertical: 50),
                            child: GestureDetector(
                                onTap: () => {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()))
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