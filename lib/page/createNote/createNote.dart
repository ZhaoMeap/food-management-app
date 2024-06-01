import 'package:flutter/material.dart';

const List<Widget> workout = <Widget>[
  Text('是'),
  Text('否'),
];

const List<Widget> weather = <Widget>[
  Icon(Icons.sunny),
  Icon(Icons.cloud),
  Icon(Icons.cloudy_snowing),
];

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final List<bool> _selectedWorkout = <bool>[true, false];
  final List<bool> _selectedWeather = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("飲食控管APP")
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("這裡放照片"),
              ),
              Center(
                child: Text("這裡放照片"),
              ),
              Center(
                child: Text("這裡放照片"),
              )
            ],
          ), // image display block
          Center(
            child:TextButton(
              onPressed: (){},
              child: Text("上傳照片")
            )
          ), //上傳照片button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("運動"),
              ToggleButtons(
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedWorkout.length; i++) {
                      _selectedWorkout[i] = i == index;
                    }
                  });
                },
                selectedBorderColor: Colors.blue[700],
                selectedColor: Colors.white,
                fillColor: Colors.blue[200],
                color: Colors.blue[400],
                children: workout,
                isSelected: _selectedWorkout)
            ],
          ), // 是否運動
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("天氣"),
              ToggleButtons(
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedWeather.length; i++) {
                        _selectedWeather[i] = i == index;
                      }
                    });
                  },
                  selectedBorderColor: Colors.blue[700],
                  selectedColor: Colors.white,
                  fillColor: Colors.blue[200],
                  color: Colors.blue[400],
                  children: weather,
                  isSelected: _selectedWeather)
            ],
          ), // 選擇天氣
          const SizedBox(height: 20),
        SizedBox(
          width: 250,
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              icon: Icon(Icons.pending_outlined),
              border: OutlineInputBorder(),
              labelText: '一句話紀錄您今天的心情',
            ),
          ),
        ),
          ButtonBar(
            children: [
              TextButton(onPressed: (){}, child: Text("返回")),
              TextButton(onPressed: (){}, child: Text("儲存")),
              TextButton(onPressed: (){}, child: Text("刪除")),
            ],
          )
        ],
      )
    );
  }
}
