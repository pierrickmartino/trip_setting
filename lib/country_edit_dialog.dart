import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';
import 'database/database.dart';

class CountryEditDialog extends StatefulWidget {
  const CountryEditDialog({Key key, this.entry}) : super(key: key);

  final WeatherWithCountry entry;

  @override
  _CountryEditDialogState createState() => _CountryEditDialogState();
}

class _CountryEditDialogState extends State<CountryEditDialog> {
  ApplicationBloc get bloc => BlocProvider.of<ApplicationBloc>(context);

  TextEditingController textControllerMin;
  TextEditingController textControllerMax;
  TextEditingController textControllerPrec;
  FocusNode textFocusNodeMin;
  FocusNode textFocusNodeMax;
  FocusNode textFocusNodePrec;
  bool _isEditingMin = false;
  bool _isEditingMax = false;
  bool _isEditingPrec = false;
  int _value;
  int _month;
  int _min;
  int _max;
  int _prec;

  void setWeatherBasedOnMonth(int _month) {
    switch (_month) {
      case 1:
        textControllerMin.text = widget.entry.weather.januaryMin.toString();
        textControllerMax.text = widget.entry.weather.januaryMax.toString();
        textControllerPrec.text = widget.entry.weather.januaryPrec.toString();
        break;
      case 2:
        textControllerMin.text = widget.entry.weather.februaryMin.toString();
        textControllerMax.text = widget.entry.weather.februaryMax.toString();
        textControllerPrec.text = widget.entry.weather.februaryPrec.toString();
        break;
      case 3:
        textControllerMin.text = widget.entry.weather.marchMin.toString();
        textControllerMax.text = widget.entry.weather.marchMax.toString();
        textControllerPrec.text = widget.entry.weather.marchPrec.toString();
        break;
      case 4:
        textControllerMin.text = widget.entry.weather.aprilMin.toString();
        textControllerMax.text = widget.entry.weather.aprilMax.toString();
        textControllerPrec.text = widget.entry.weather.aprilPrec.toString();
        break;
      case 5:
        textControllerMin.text = widget.entry.weather.mayMin.toString();
        textControllerMax.text = widget.entry.weather.mayMax.toString();
        textControllerPrec.text = widget.entry.weather.mayPrec.toString();
        break;
      case 6:
        textControllerMin.text = widget.entry.weather.juneMin.toString();
        textControllerMax.text = widget.entry.weather.juneMax.toString();
        textControllerPrec.text = widget.entry.weather.junePrec.toString();
        break;
      case 7:
        textControllerMin.text = widget.entry.weather.julyMin.toString();
        textControllerMax.text = widget.entry.weather.julyMax.toString();
        textControllerPrec.text = widget.entry.weather.julyPrec.toString();
        break;
      case 8:
        textControllerMin.text = widget.entry.weather.augustMin.toString();
        textControllerMax.text = widget.entry.weather.augustMax.toString();
        textControllerPrec.text = widget.entry.weather.augustPrec.toString();
        break;
      case 9:
        textControllerMin.text = widget.entry.weather.septemberMin.toString();
        textControllerMax.text = widget.entry.weather.septemberMax.toString();
        textControllerPrec.text = widget.entry.weather.septemberPrec.toString();
        break;
      case 10:
        textControllerMin.text = widget.entry.weather.octoberMin.toString();
        textControllerMax.text = widget.entry.weather.octoberMax.toString();
        textControllerPrec.text = widget.entry.weather.octoberPrec.toString();
        break;
      case 11:
        textControllerMin.text = widget.entry.weather.novemberMin.toString();
        textControllerMax.text = widget.entry.weather.novemberMax.toString();
        textControllerPrec.text = widget.entry.weather.novemberPrec.toString();
        break;
      case 12:
        textControllerMin.text = widget.entry.weather.decemberMin.toString();
        textControllerMax.text = widget.entry.weather.decemberMax.toString();
        textControllerPrec.text = widget.entry.weather.decemberPrec.toString();
        break;

      default:
        textControllerMin.text = widget.entry.weather.januaryMin.toString();
        textControllerMax.text = widget.entry.weather.januaryMax.toString();
        textControllerPrec.text = widget.entry.weather.januaryPrec.toString();
    }
  }

  @override
  void initState() {
    textControllerMin = TextEditingController();
    textControllerMax = TextEditingController();
    textControllerPrec = TextEditingController();

    textControllerMin.text = widget.entry.weather.januaryMin.toString();
    textControllerMax.text = widget.entry.weather.januaryMax.toString();
    textControllerPrec.text = widget.entry.weather.januaryPrec.toString();

    textFocusNodeMin = FocusNode();
    textFocusNodeMax = FocusNode();
    textFocusNodePrec = FocusNode();

    _value = widget.entry.country.security;
    _month = 1;
    _min = widget.entry.weather.januaryMin;
    _max = widget.entry.weather.januaryMax;
    _prec = widget.entry.weather.januaryPrec;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Country Settings',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Center(
                    child: Text(
                      widget.entry.country.label,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 8),
                  child: Text('Edit Security',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle2),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: DropdownButton(
                        value: _value,
                        items: const [
                          DropdownMenuItem(
                            value: 5,
                            child: Text('Low risk'),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text('Average risk'),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text('High risk'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        })
                    // TextField(
                    //   focusNode: textFocusNodeCountry,
                    //   keyboardType: TextInputType.text,
                    //   textInputAction: TextInputAction.next,
                    //   controller: textControllerCountry,
                    //   onChanged: (value) {
                    //     setState(() {
                    //       _isEditingCountry = true;
                    //     });
                    //   },
                    //   onSubmitted: (value) {
                    //     textFocusNodeCountry.unfocus();
                    //   },
                    //   style: const TextStyle(
                    //     color: Colors.black,
                    //   ),
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //       borderSide: BorderSide(
                    //         color: Colors.blueGrey[800],
                    //         width: 3,
                    //       ),
                    //     ),
                    //     filled: true,
                    //     hintStyle: TextStyle(
                    //       color: Colors.blueGrey[300],
                    //     ),
                    //     hintText: 'Country',
                    //     fillColor: Colors.white,
                    //     errorText: _isEditingCountry
                    //         ? _validateCountry(textControllerCountry.text)
                    //         : null,
                    //     errorStyle: const TextStyle(
                    //       fontSize: 12,
                    //       color: Colors.redAccent,
                    //     ),
                    //   ),
                    // ),
                    ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
                  child: Text('Edit Weather',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle2),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        DropdownButton(
                            value: _month,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('January'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('February'),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text('March'),
                              ),
                              DropdownMenuItem(
                                value: 4,
                                child: Text('April'),
                              ),
                              DropdownMenuItem(
                                value: 5,
                                child: Text('May'),
                              ),
                              DropdownMenuItem(
                                value: 6,
                                child: Text('June'),
                              ),
                              DropdownMenuItem(
                                value: 7,
                                child: Text('July'),
                              ),
                              DropdownMenuItem(
                                value: 8,
                                child: Text('August'),
                              ),
                              DropdownMenuItem(
                                value: 9,
                                child: Text('September'),
                              ),
                              DropdownMenuItem(
                                value: 10,
                                child: Text('October'),
                              ),
                              DropdownMenuItem(
                                value: 11,
                                child: Text('November'),
                              ),
                              DropdownMenuItem(
                                value: 12,
                                child: Text('December'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _month = value;
                                setWeatherBasedOnMonth(_month);
                              });
                            }),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: TextField(
                                focusNode: textFocusNodeMin,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                controller: textControllerMin,
                                onChanged: (value) {
                                  setState(() {
                                    _min = int.parse(value);
                                    _isEditingMin = true;
                                  });
                                },
                                onSubmitted: (value) {
                                  textFocusNodeMin.unfocus();
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Min (°C)',
                                  helperText: 'Min (°C)',
                                ),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: TextField(
                                focusNode: textFocusNodeMax,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                controller: textControllerMax,
                                onChanged: (value) {
                                  setState(() {
                                    _max = int.parse(value);
                                    _isEditingMax = true;
                                  });
                                },
                                onSubmitted: (value) {
                                  textFocusNodeMax.unfocus();
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Max (°C)',
                                  helperText: 'Max (°C)',
                                ),
                              )),
                        ),
                        Expanded(
                            child: TextField(
                          focusNode: textFocusNodePrec,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          controller: textControllerPrec,
                          onChanged: (value) {
                            setState(() {
                              _prec = int.parse(value);
                              _isEditingPrec = true;
                            });
                          },
                          onSubmitted: (value) {
                            textFocusNodePrec.unfocus();
                          },
                          decoration: const InputDecoration(
                            hintText: 'Precip. (mm)',
                            helperText: 'Precip. (mm)',
                          ),
                        )),
                      ],
                    )),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Container(
                          width: double.maxFinite,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                textFocusNodeMin.unfocus();
                                textFocusNodeMax.unfocus();
                                textFocusNodePrec.unfocus();
                              });

                              final Country _country =
                                  widget.entry.country.copyWith(
                                security: _value,
                              );

                              BlocProvider.of<ApplicationBloc>(context)
                                  .updateCountry(_country);

                              Weather _weather;
                              switch (_month) {
                                case 1:
                                  _weather = widget.entry.weather.copyWith(
                                    januaryMin: _min,
                                    januaryMax: _max,
                                    januaryAvg: (_min + _max) / 2,
                                    januaryPrec: _prec,
                                  );
                                  break;
                                case 2:
                                  _weather = widget.entry.weather.copyWith(
                                    februaryMin: _min,
                                    februaryMax: _max,
                                    februaryAvg: (_min + _max) / 2,
                                    februaryPrec: _prec,
                                  );
                                  break;
                                case 3:
                                  _weather = widget.entry.weather.copyWith(
                                    marchMin: _min,
                                    marchMax: _max,
                                    marchAvg: (_min + _max) / 2,
                                    marchPrec: _prec,
                                  );
                                  break;
                                case 4:
                                  _weather = widget.entry.weather.copyWith(
                                    aprilMin: _min,
                                    aprilMax: _max,
                                    aprilAvg: (_min + _max) / 2,
                                    aprilPrec: _prec,
                                  );
                                  break;
                                case 5:
                                  _weather = widget.entry.weather.copyWith(
                                    mayMin: _min,
                                    mayMax: _max,
                                    mayAvg: (_min + _max) / 2,
                                    mayPrec: _prec,
                                  );
                                  break;
                                case 6:
                                  _weather = widget.entry.weather.copyWith(
                                    juneMin: _min,
                                    juneMax: _max,
                                    juneAvg: (_min + _max) / 2,
                                    junePrec: _prec,
                                  );
                                  break;
                                case 7:
                                  _weather = widget.entry.weather.copyWith(
                                    julyMin: _min,
                                    julyMax: _max,
                                    julyAvg: (_min + _max) / 2,
                                    julyPrec: _prec,
                                  );
                                  break;
                                case 8:
                                  _weather = widget.entry.weather.copyWith(
                                    augustMin: _min,
                                    augustMax: _max,
                                    augustAvg: (_min + _max) / 2,
                                    augustPrec: _prec,
                                  );
                                  break;
                                case 9:
                                  _weather = widget.entry.weather.copyWith(
                                    septemberMin: _min,
                                    septemberMax: _max,
                                    septemberAvg: (_min + _max) / 2,
                                    septemberPrec: _prec,
                                  );
                                  break;
                                case 10:
                                  _weather = widget.entry.weather.copyWith(
                                    octoberMin: _min,
                                    octoberMax: _max,
                                    octoberAvg: (_min + _max) / 2,
                                    octoberPrec: _prec,
                                  );
                                  break;
                                case 11:
                                  _weather = widget.entry.weather.copyWith(
                                    novemberMin: _min,
                                    novemberMax: _max,
                                    novemberAvg: (_min + _max) / 2,
                                    novemberPrec: _prec,
                                  );
                                  break;
                                case 12:
                                  _weather = widget.entry.weather.copyWith(
                                    decemberMin: _min,
                                    decemberMax: _max,
                                    decemberAvg: (_min + _max) / 2,
                                    decemberPrec: _prec,
                                  );
                                  break;
                                default:
                                  _weather = widget.entry.weather.copyWith(
                                    januaryMin: _min,
                                    januaryMax: _max,
                                    januaryAvg: (_min + _max) / 2,
                                    januaryPrec: _prec,
                                  );
                              }

                              BlocProvider.of<ApplicationBloc>(context)
                                  .updateWeather(_weather);

                              textControllerMin.text = '0';
                              textControllerMax.text = '0';
                              textControllerPrec.text = '0';
                              _isEditingMin = false;
                              _isEditingMax = false;
                              _isEditingPrec = false;

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content:
                                      Text('Country info successfully edited'),
                                ),
                              );

                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              child: Text('Save'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        child: Container(
                          width: double.maxFinite,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                textFocusNodeMin.unfocus();
                                textFocusNodeMax.unfocus();
                                textFocusNodePrec.unfocus();
                              });

                              textControllerMin.text = '0';
                              textControllerMax.text = '0';
                              textControllerPrec.text = '0';
                              _isEditingMin = false;
                              _isEditingMax = false;
                              _isEditingPrec = false;

                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              child: Text('Cancel'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
