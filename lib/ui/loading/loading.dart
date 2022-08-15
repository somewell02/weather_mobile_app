import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:weather_app/data/provider_data.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<providerData>().getWeatherData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom:120),
            child: Text(
              'Weather',
              style: GoogleFonts.manrope(
                color: Theme.of(context).primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: SpinKitRing(
              color: Theme.of(context).primaryColor,
              size: 42,
            ),
          ),
        ],
      ),
    );
  }
}
