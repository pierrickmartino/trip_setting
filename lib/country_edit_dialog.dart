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
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 8),
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
                                  value: 1, child: Text('January')),
                              DropdownMenuItem(
                                  value: 2, child: Text('February')),
                              DropdownMenuItem(value: 3, child: Text('March')),
                              DropdownMenuItem(value: 4, child: Text('April')),
                              DropdownMenuItem(value: 5, child: Text('May')),
                              DropdownMenuItem(value: 6, child: Text('June')),
                              DropdownMenuItem(value: 7, child: Text('July')),
                              DropdownMenuItem(value: 8, child: Text('August')),
                              DropdownMenuItem(
                                  value: 9, child: Text('September')),
                              DropdownMenuItem(
                                  value: 10, child: Text('October')),
                              DropdownMenuItem(
                                  value: 11, child: Text('November')),
                              DropdownMenuItem(
                                  value: 12, child: Text('December')),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _month = value;
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
                              });

                              final entry = widget.entry.country.copyWith(
                                security: _value,
                              );

                              BlocProvider.of<ApplicationBloc>(context)
                                  .updateCountry(entry);

                              textControllerMin.text = '0';
                              _isEditingMin = false;

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text('Country successfully edited'),
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
                              });

                              textControllerMin.text = '0';
                              _isEditingMin = false;

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
