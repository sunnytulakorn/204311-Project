import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Address Form',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Address Form"),
          ),
          body: const MyCustomForm(),
        ));
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _key = GlobalKey<FormState>();
  final nameController1 = TextEditingController();
  final nameController2 = TextEditingController();
  final citys = ['Mueang Chiang Mai','Chom Thong','Mae Chaem','Chiang Dao','Doi Saket','Mae Taeng','Mae Rim','Samoeng','Fang','Mae Ai','Phrao','San Pa Tong','San Kamphaeng','San Sai','Hang Dong','Hot','Doi Tao','Omkoi','Saraphi','Wiang Haeng','Chai Prakan','Mae Wang','Mae On','Doi Lo','Galayani Vadhana'];
  final dis = [['Si Phum', 'Mueang Chiang Mai'], ['Phra Sing', 'Mueang Chiang Mai'], ['Hai Ya', 'Mueang Chiang Mai'], ['Chang Moi', 'Mueang Chiang Mai'], ['Chang Khlan', 'Mueang Chiang Mai'], ['Wat Ket', 'Mueang Chiang Mai'], ['Chang Phueak', 'Mueang Chiang Mai'], ['Suthep', 'Mueang Chiang Mai'], ['Mae Hia', 'Mueang Chiang Mai'], ['Pa Daet', 'Mueang Chiang Mai'], ['Nong Hoi', 'Mueang Chiang Mai'], ['Tha Sala', 'Mueang Chiang Mai'], ['Nong Pa Khrang', 'Mueang Chiang Mai'], ['Fa Ham', 'Mueang Chiang Mai'], ['Pa Tan', 'Mueang Chiang Mai'], ['San Phi Suea', 'Mueang Chiang Mai'], ['Ban Luang', 'Chom Thong'], ['Khuang Pao', 'Chom Thong'], ['Sop Tia', 'Chom Thong'], ['Ban Pae', 'Chom Thong'], ['Doi Kaeo', 'Chom Thong'], ['Mae Soi', 'Chom Thong'], ['Chang Khoeng', 'Mae Chaem'], ['The Pha', 'Mae Chaem'], ['Ban Thap', 'Mae Chaem'], ['Mae Suek', 'Mae Chaem'], ['Mae Na Chon', 'Mae Chaem'], ['Pang Hin Fon', 'Mae Chaem'], ['Kong Khaek', 'Mae Chaem'], ['Chiang Dao', 'Chiang Dao'], ['Mueang Na', 'Chiang Dao'], ['Mueang Ngai', 'Chiang Dao'], ['Mae Na', 'Chiang Dao'], ['Mueang Khong', 'Chiang Dao'], ['Ping Khong', 'Chiang Dao'], ['Thung Khao Phuang', 'Chiang Dao'], ['Choeng Doi', 'Doi Saket'], ['San Pu Loei', 'Doi Saket'], ['Luang Nuea', 'Doi Saket'], ['Pa Pong', 'Doi Saket'], ['Sa-nga Ban', 'Doi Saket'], ['Pa Lan', 'Doi Saket'], ['Talat Khwan', 'Doi Saket'], ['Samran Rat', 'Doi Saket'], ['Mae Khue', 'Doi Saket'], ['Talat Yai', 'Doi Saket'], ['Mae Hoi Ngoen', 'Doi Saket'], ['Mae Pong', 'Doi Saket'], ['Pa Miang', 'Doi Saket'], ['Thep Sadet', 'Doi Saket'], ['San Maha Phon', 'Mae Taeng'], ['Mae Taeng', 'Mae Taeng'], ['Khilek', 'Mae Taeng'], ['Cho Lae', 'Mae Taeng'], ['Mae Ho Phra', 'Mae Taeng'], ['Sop Poeng', 'Mae Taeng'], ['Ban Pao', 'Mae Taeng'], ['San Pa Yang', 'Mae Taeng'], ['Pa Pae', 'Mae Taeng'], ['Mueang Kai', 'Mae Taeng'], ['Ban Chang', 'Mae Taeng'], ['Kuet Chang', 'Mae Taeng'], ['Inthakhin', 'Mae Taeng'], ['Rim Tai', 'Mae Rim'], ['Rim Nuea', 'Mae Rim'], ['San Pong', 'Mae Rim'], ['Khilek', 'Mae Rim'], ['Saluang', 'Mae Rim'], ['Huai Sai', 'Mae Rim'], ['Mae Raem', 'Mae Rim'], ['Pong Yaeng', 'Mae Rim'], ['Mae Sa', 'Mae Rim'], ['Don Kaeo', 'Mae Rim'], ['Mueang Kaeo', 'Mae Rim'], ['Samoeng Tai', 'Samoeng'], ['Samoeng Nuea', 'Samoeng'], ['Mae Sap', 'Samoeng'], ['Bo Kaeo', 'Samoeng'], ['Yang Moen', 'Samoeng'], ['Wiang', 'Fang'], ['Mon Pin', 'Fang'], ['Mae Ngon', 'Fang'], ['Mae Sun', 'Fang'], ['San Sai', 'Fang'], ['Mae Kha', 'Fang'], ['Mae Kha', 'Fang'], ['Pong Nam Ron', 'Fang'], ['Mae Ai', 'Mae Ai'], ['Mae Sao', 'Mae Ai'], ['San Ton Mue', 'Mae Ai'], ['Mae Na Wang', 'Mae Ai'], ['Tha Ton', 'Mae Ai'], ['Ban Luang', 'Mae Ai'], ['Malika', 'Mae Ai'], ['Wiang', 'Phrao'], ['Thung Luang', 'Phrao'], ['Pa Tum', 'Phrao'], ['Pa Nai', 'Phrao'], ['San Sai', 'Phrao'], ['Ban Pong', 'Phrao'], ['Nam Phrae', 'Phrao'], ['Khuean Phak', 'Phrao'], ['Mae Waen', 'Phrao'], ['Mae Pang', 'Phrao'], ['Long Khot', 'Phrao'], ['Yu Wa', 'San Pa Tong'], ['San Klang', 'San Pa Tong'], ['Tha Wang Phrao', 'San Pa Tong'], ['Makham Luang', 'San Pa Tong'], ['Mae Ka', 'San Pa Tong'], ['Ban Mae', 'San Pa Tong'], ['Ban Klang', 'San Pa Tong'], ['Thung Satok', 'San Pa Tong'], ['Thung Tom', 'San Pa Tong'], ['Nam Bo Luang', 'San Pa Tong'], ['Makhun Wan', 'San Pa Tong'], ['San Kamphaeng', 'San Kamphaeng'], ['Sai Mun', 'San Kamphaeng'], ['Rong Wua Daeng', 'San Kamphaeng'], ['Buak Khang', 'San Kamphaeng'], ['Chae Chang', 'San Kamphaeng'], ['On Tai', 'San Kamphaeng'], ['Mae Pu Kha', 'San Kamphaeng'], ['Huai Sai', 'San Kamphaeng'], ['Ton Pao', 'San Kamphaeng'], ['San Klang', 'San Kamphaeng'], ['San Sai Luang', 'San Sai'], ['San Sai Noi', 'San Sai'], ['San Phra Net', 'San Sai'], ['San Na Meng', 'San Sai'], ['San Pa Pao', 'San Sai'], ['Nong Yaeng', 'San Sai'], ['Nong Chom', 'San Sai'], ['Nong Han', 'San Sai'], ['Mae Faek', 'San Sai'], ['Mae Faek Mai', 'San Sai'], ['Mueang Len', 'San Sai'], ['Pa Phai', 'San Sai'], ['Hang Dong', 'Hang Dong'], ['Nong Kaeo', 'Hang Dong'], ['Han Kaeo', 'Hang Dong'], ['Nong Tong', 'Hang Dong'], ['Khun Khong', 'Hang Dong'], ['Sop Mae Kha', 'Hang Dong'], ['Ban Waen', 'Hang Dong'], ['San Phak Wan', 'Hang Dong'], ['Nong Khwai', 'Hang Dong'], ['Ban Pong', 'Hang Dong'], ['Nam Phrae', 'Hang Dong'], ['Hang Dong', 'Hot'], ['Hot', 'Hot'], ['Ban Tan', 'Hot'], ['Bo Luang', 'Hot'], ['Bo Sali', 'Hot'], ['Na Kho Ruea', 'Hot'], ['Doi Tao', 'Doi Tao'], ['Tha Duea', 'Doi Tao'], ['Muet Ka', 'Doi Tao'], ['Ban Aen', 'Doi Tao'], ['Bong Tan', 'Doi Tao'], ['Pong Thung', 'Doi Tao'], ['Omkoi', 'Omkoi'], ['Yang Piang', 'Omkoi'], ['Mae Tuen', 'Omkoi'], ['Mon Chong', 'Omkoi'], ['Sop Khong', 'Omkoi'], ['Na Kian', 'Omkoi'], ['Yang Noeng', 'Saraphi'], ['Saraphi', 'Saraphi'], ['Chomphu', 'Saraphi'], ['Chai Sathan', 'Saraphi'], ['Khua Mung', 'Saraphi'], ['Nong Faek', 'Saraphi'], ['Nong Phueng', 'Saraphi'], ['Tha Kwang', 'Saraphi'], ['Don Kaeo', 'Saraphi'], ['Tha Wang Tan', 'Saraphi'], ['San Sai', 'Saraphi'], ['Pa Bong', 'Saraphi'], ['Mueang Haeng', 'Wiang Haeng'], ['Piang Luang', 'Wiang Haeng'], ['Saen Hai', 'Wiang Haeng'], ['Pong Tam', 'Chai Prakan'], ['Si Dong Yen', 'Chai Prakan'], ['Mae Thalop', 'Chai Prakan'], ['Nong Bua', 'Chai Prakan'], ['Ban Kat', 'Mae Wang'], ['Thung Pi', 'Mae Wang'], ['Thung Ruang Thong', 'Mae Wang'], ['Mae Win', 'Mae Wang'], ['Don Pao', 'Mae Wang'], ['On Nuea', 'Mae On'], ['On Klang', 'Mae On'], ['Ban Sahakon', 'Mae On'], ['Huai Kaeo', 'Mae On'], ['Mae Tha', 'Mae On'], ['Tha Nuea', 'Mae On'], ['Doi Lo', 'Doi Lo'], ['Song Khwae', 'Doi Lo'], ['Yang Khram', 'Doi Lo'], ['Santi Suk', 'Doi Lo'], ['Ban Chan', 'Galayani Vadhana'], ['Mae Daet', 'Galayani Vadhana'], ['Chaem Luang', 'Galayani Vadhana']];
  String _city = "";

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return "Please write your Email.";
    } else if (value.isNotEmpty && !regex.hasMatch(value)) {
      return "Invalid Email Format.";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: "Enter Email Address"),
            validator: validateEmail,
            controller: nameController1,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Enter Zip Code"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please write your Zip Code";
              } else if (value.length < 5 || value[0] == "0") {
                return "Invalid Zip Code";
              } else {
                return null;
              }
            },
            controller: nameController2,
          ),
          Row(
            children: const [
              Text(
                "Provice: Chiangmai",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Row(
            children: const [
              Text("District", style: TextStyle(fontSize: 25)),
            ],
          ),
          Autocomplete(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == "") {
                return const Iterable<String>.empty();
              } else {
                return citys.where((String muang) {
                  return muang
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              }
            },
            onSelected: (String selection) {
              _city = selection;
            },
          ),
          Row(
            children: const [
              Text(
                "Tambon",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Autocomplete(
            optionsBuilder: (TextEditingValue textEditingValue) {
              List<String> _tambon = [];
              for(var j = 0 ; j < dis.length ; j++ ) {
                if(dis[j][1] == _city){
                  _tambon.add(dis[j][0]);
                }
              }
              if (textEditingValue.text == "") {
                return const Iterable<String>.empty();
              } else {
                return _tambon.where((String muang) {
                  return muang
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              }
            },
            onSelected: (String selection) {
              _city = selection;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Processing...${nameController1.text} , $_city")));
                }
              },
              child: const Text("Submit"))
        ],
      ),
    );
  }
}
