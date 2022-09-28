import 'package:flutter/material.dart';

class WidgetTestsPage extends StatefulWidget {
  const WidgetTestsPage({super.key});

  @override
  State<WidgetTestsPage> createState() => _WidgetTestsPageState();
}

class _WidgetTestsPageState extends State<WidgetTestsPage> {
  //rageSlider
  RangeValues range = const RangeValues(0.1, 50);

  //Selectable text
  final style = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  String selectedText = '';
  String selectableText = 'Sangue de Jesus tem P O D E R';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WidgetTestsPage'),
      ),
      body: Column(
        children: [
          expansionTileWidget(),
          rangeSlider(),
          const SizedBox(height: 20),
          selectableTextWidget(),
          Text(
            selectedText,
            style: style.copyWith(
              fontSize: 27, //*copyWith() is used to change some value of the text*//
              color: Colors.red,
            ),
          ),
          aboutDialog(),
          Container(),
        ],
      ),
    );
  }

  Widget expansionTileWidget() {
    return const ExpansionTile(
      title: Text('See more'),
      initiallyExpanded: false,
      childrenPadding: EdgeInsets.all(8),
      expandedAlignment: Alignment.centerLeft,
      children: [
        Text('Primeiro item'),
        Text('Segundo item'),
        Text('Terceiro item'),
        Text('Quarto item'),
      ],
    );
  }

  Widget rangeSlider() {
    RangeLabels labels = RangeLabels(range.start.toString(), range.end.toString());
    return RangeSlider(
      values: range,
      min: 0,
      max: 100,
      divisions: 20,
      labels: labels,
      onChanged: (RangeValues values) {
        setState(() {
          range = values;
        });
      },
    );
  }

  Widget selectableTextWidget() {
    return SelectableText(
      selectableText,
      style: style,
      toolbarOptions: const ToolbarOptions(copy: true, selectAll: true, cut: true),
      onSelectionChanged: (selection, cause) {
        setState(() {
          selectedText = selection.textInside(selectableText);
        });
      },
    );
  }

  Widget aboutDialog() {
    return ElevatedButton(
        child: const Text('About Dialog'),
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: 'Widget tests',
            applicationVersion: '1.0.0',
            applicationIcon: const FlutterLogo(),
            applicationLegalese: 'Sangue de Jesus tem P O D E R',
          );
        });

    // return ElevatedButton(
    //   child: const Text('About Dialog'),
    //   onPressed: () {
    //     showAboutDialog(
    //       context: context,
    //       applicationName: 'Animations and Widgets',
    //       applicationVersion: '1.0.0',
    //       applicationIcon: const Icon(
    //         Icons.flutter_dash_outlined,
    //         color: Colors.blue,
    //       ),
    //       applicationLegalese: 'Sangue de Jesus tem P O D E R',
    //       children: [
    //         const Text('Sangue de Jesus tem P O D E R'),
    //         const Text('Sangue de Jesus tem P O D E R'),
    //         const Text('Sangue de Jesus tem P O D E R'),
    //       ],
    //     );
    //   },
    // );
  }
}
