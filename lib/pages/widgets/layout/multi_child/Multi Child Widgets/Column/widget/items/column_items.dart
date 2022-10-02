import 'package:flutter/material.dart';

import '../layout_selector_widget.dart';

class RowColumnItems extends StatefulWidget {
  final ValueChanged<int> onChangedLayout;
  final ValueChanged<int> onChangedMainAxisAlignment;
  final ValueChanged<int> onChangedCrossAxisAlignment;
  final ValueChanged<int> onChangedMainAxisSize;

  const RowColumnItems({super.key,
    required this.onChangedLayout,
    required this.onChangedMainAxisAlignment,
    required this.onChangedCrossAxisAlignment,
    required this.onChangedMainAxisSize,
  });

  @override
  RowColumnItemsState createState() => RowColumnItemsState();
}

class RowColumnItemsState extends State<RowColumnItems> {
  bool showMainAxisAlign = false;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                LayoutSelectorWidget(
                  title: '',
                  values: const [''],
                  onChanged: widget.onChangedLayout,
                  disabled: true,
                ),
                LayoutSelectorWidget(
                  title: 'Main Axis Size',
                  values: const ['min', 'max'],
                  onChanged: setMainAxisSize,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                LayoutSelectorWidget(
                  title: 'Main Axis Alignment',
                  values: const [
                    'start',
                    'end',
                    'center',
                    'space\nbetween',
                    'space\naround',
                    'space\nevenly'
                  ],
                  disabled: !showMainAxisAlign,
                  onChanged: widget.onChangedMainAxisAlignment,
                ),
                LayoutSelectorWidget(
                  title: 'Cross Axis Alignment',
                  values: const [
                    'start',
                    'end',
                    'center',
                    'stretch',
                  ],
                  onChanged: widget.onChangedCrossAxisAlignment,
                ),
              ],
            ),
          ),
        ],
      );

  void setMainAxisSize(int index) {
    widget.onChangedMainAxisSize(index);

    setState(() => showMainAxisAlign = index == 1);
  }
}
