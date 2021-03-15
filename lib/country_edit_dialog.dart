import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';
import 'database/database.dart';

class CountryEditDialog extends StatefulWidget {
  const CountryEditDialog({Key key, this.entry}) : super(key: key);

  final Country entry;

  @override
  _CountryEditDialogState createState() => _CountryEditDialogState();
}

class _CountryEditDialogState extends State<CountryEditDialog> {
  TextEditingController textControllerCountry;
  FocusNode textFocusNodeCountry;
  bool _isEditingCountry = false;

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
    textControllerCountry.text = widget.entry.security.toString();
    textFocusNodeCountry = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: 400,
            color: Theme.of(context).backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Country',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1.color,
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 8),
                  child: Text(
                    'Edit Security',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle2.color,
                      //fontSize: 18,
                      // fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    focusNode: textFocusNodeCountry,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: textControllerCountry,
                    onChanged: (value) {
                      setState(() {
                        _isEditingCountry = true;
                      });
                    },
                    onSubmitted: (value) {
                      textFocusNodeCountry.unfocus();
                    },
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blueGrey[800],
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.blueGrey[300],
                      ),
                      hintText: 'Country',
                      fillColor: Colors.white,
                      errorText: _isEditingCountry
                          ? _validateCountry(textControllerCountry.text)
                          : null,
                      errorStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Container(
                          width: double.maxFinite,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey[800]),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.blueGrey[900];
                                }
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black;
                                }
                                return null; // Defer to the widget's default.
                              }),
                            ),
                            onPressed: () {
                              setState(() {
                                textFocusNodeCountry.unfocus();
                              });

                              final updatedContent = textControllerCountry.text;
                              final entry = widget.entry.copyWith(
                                security: updatedContent.isNotEmpty
                                    ? int.parse(updatedContent)
                                    : null,
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
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        child: Container(
                          width: double.maxFinite,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey[800]),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.blueGrey[900];
                                }
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black;
                                }
                                return null; // Defer to the widget's default.
                              }),
                            ),
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
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
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
