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

  TextEditingController textControllerCountry;
  FocusNode textFocusNodeCountry;
  bool _isEditingCountry = false;
  int _value;
  int _month;

  String _validateCountry(String value) {
    value = value.trim();

    if (textControllerCountry.text != null) {
      if (value.isEmpty) {
        return "Country can't be empty";
      } else if (!value.contains(
        RegExp(r"^[a-zA-Z0-9]+"),
      )) {
        return 'Enter a correct Country';
      }
    }

    return null;
  }

  @override
  void initState() {
    textControllerCountry = TextEditingController();
    textControllerCountry.text = widget.entry.country.security.toString();
    textFocusNodeCountry = FocusNode();
    _value = widget.entry.country.security;
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
                                decoration:
                                    InputDecoration(hintText: 'Min (°C)'),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: 'Max (°C)'),
                              )),
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(hintText: 'Precip. (mm)'),
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
                                textFocusNodeCountry.unfocus();
                              });

                              final entry = widget.entry.country.copyWith(
                                security: _value,
                              );

                              BlocProvider.of<ApplicationBloc>(context)
                                  .updateCountry(entry);

                              textControllerCountry.text = '';
                              _isEditingCountry = false;

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
                                textFocusNodeCountry.unfocus();
                              });

                              textControllerCountry.text = '';
                              _isEditingCountry = false;

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
