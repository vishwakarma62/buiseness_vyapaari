
import 'package:buiseness_vyapaari/ui/list_view.dart';
import 'package:buiseness_vyapaari/ui/map_view.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> with SingleTickerProviderStateMixin{
    late TabController tabController;
    int tabIndex=0;
      @override 
   void initState() { 
     super.initState(); 
   
    //  mapScrollController = ScrollController(); 
    //  listScrollController = ScrollController(); 
  
     tabController = TabController(length: 2, vsync: this); 
   
     tabController.addListener(() { 
       setState(() { 
         tabIndex = tabController.index; 
       }); 
      
     }); 
  
    
   }
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:   Scaffold(
      appBar: AppBar( backgroundColor: AppColor.darkblue,
      title: Text(
            "Offer Business",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          bottom:TabBar(  splashFactory: NoSplash.splashFactory,
           isScrollable: false,
             indicatorColor: AppColor.Orange, // Remove the default indicator
              labelColor: Colors.orange, // Set the default label color
              unselectedLabelColor: Colors.white, // Set the unselected label color
              labelStyle: TextStyle(fontSize: 18),
 
            // indicatorColor: AppColor.Orange,
            // indicatorWeight: 5,
              tabs: [ 
                Tab( 
                  
                  child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.map_sharp),
              SizedBox(width: 4,),
              Text("Map View",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],)
                ), 
                Tab( 
                  child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.list_sharp),
              SizedBox(width: 4,),
              Text("List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],)
                ), 
              ]) ,
          ),
          body: TabBarView(
            children: [
              MapViewPage(),
              ListViewPage(),
            ],
          ),
    ),);
    
  }
}