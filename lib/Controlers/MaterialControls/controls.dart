import 'package:flutter/material.dart';
import 'package:grunt/Controlers/FIREBASE/Firelog.dart';

setSelectedRadioTile(int val) {
  // setState(() {
  //   selectedRadioTile = val;
  // });
}
int selectedRadio = 0;
int selectedRadioTile = 0;
Column listOfcontroles() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        dropDownBTN(),
        popmenuBTN(),
        checkBox(),
        radioBTN(),
        switchBtn(),
        sliderControl(),
        Material(child: Slider(value: 0.3,
         onChanged: (v){},
         activeColor: Colors.green,
         divisions: 2,),
        ),
      ]);
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

Material popmenuBTN() {
  return Material(
    child: PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {},
      // {
      //   setState(() {
      //     //_selection = result;
      //   });
      // },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
    ),
  );
}

Material dropDownBTN() {
  String dropdownValue = 'Two';

  return Material(
    child: DropdownButton(
      value: dropdownValue,
      icon: Icon(Icons.add_comment),
      iconSize: 15,
      elevation: 30,
      style: TextStyle(color: Colors.deepPurple),
      onChanged: (String newValue) {},
      //  {
      //   setState(() {
      //     dropdownValue = newValue;
      //   });
      // },
      items: <String>['One', 'Two', 'Free', 'Four', '2222']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
  );
}

//CHECK BOX
Material checkBox() {
  bool checkedValue = false;
  return Material(
      child: CheckboxListTile(
    title: Text("title text"),
    subtitle: Text('data'),
    value: checkedValue,
    activeColor: Colors.orange,
    onChanged: (newValue) {
      checkedValue = newValue;
    },
    // {
    //   setState(() {
    //     checkedValue =  newValue;
    //   });
    // },
    controlAffinity: ListTileControlAffinity.trailing, //  <-- leading Checkbox
  ));
}

Column radioBTN() {
  int value = 1;
  return Column(
    children: <Widget>[
      Material(
        child: Radio(
            value: value,
            activeColor: Colors.green,
            focusColor: Colors.pink,
            groupValue: 5,
            onChanged: (val) {}),
      ),
      Material(
        child: RadioListTile(
          value: 1,
          groupValue: selectedRadioTile,
          title: Text("Radio 1"),
          subtitle: Text("Radio 1 Subtitle"),
          onChanged: (val) {
            print("Radio Tile pressed $val");
            setSelectedRadioTile(val);
          },
          activeColor: Colors.red,
          secondary: OutlineButton(
            child: Text("Say Hi"),
            onPressed: () {
              print("Say Hello");
            },
          ),
          selected: true,
        ),
      ),
      Material(
        child: RadioListTile(
          value: 2,
          groupValue: selectedRadioTile,
          title: Text("Radio 2"),
          subtitle: Text("Radio 2 Subtitle"),
          onChanged: (val) {
            print("Radio Tile pressed $val");
            setSelectedRadioTile(val);
          },
          activeColor: Colors.red,
          secondary: OutlineButton(
            child: Text("Say Hi"),
            onPressed: () {
              print("Say Hello");
            },
          ),
          selected: false,
        ),
      ),
    ],
  );
}

Material switchBtn() {
  return Material(
      child: Switch(
      value: true, //isSwitched,
      onChanged: (value) 
      {
       // setState(() {
         // isSwitched=value;
          print("isSwitched=$value");
        //});
      },
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    ),
  );
}


Material sliderControl(){
 return Material(child: Slider(
      min: 0,
      max: 100,
      value: 30.2,//_value,
      label: "uuuu",
      onChanged: (value) {
       // setState(() {
         // _value = value;
       // });
      },
      
    ),);


    /*CUSTOMIZATION 

    Material(
      child: SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: RectangularSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: Colors.redAccent,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        
      ),
      child: Slider(
        value: _value,
        label: "$_value",
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    ),
    ); */
}