import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _OTPItem(context, onChanged: (value) => print(value), isFirst: true,),
          _OTPItem(context, onChanged: (value) => print(value)),
          _OTPItem(context, onChanged: (value) => print(value)),
          _OTPItem(context, onChanged: (value) => print(value)),
          _OTPItem(context,onChanged: (value) => print(value), isLast: true,),
        ],
      ),
    );
  }
}


class _OTPItem extends StatefulWidget {

  final BuildContext context;
  final Function(String value)? onChanged;
  final bool isFirst;
  final bool isLast;


  const _OTPItem(this.context, { Key? key, this.onChanged, this.isFirst = false, this.isLast = false }) : super(key: key);

  @override
  State<_OTPItem> createState() => _OTPItemState();
}

class _OTPItemState extends State<_OTPItem> {

  late FocusNode focusNode;
  late TextEditingController controller;

  @override
  void initState() {
    focusNode = FocusNode();
    controller = TextEditingController();
    focusNode.addListener(focusNodeListener);
    super.initState();
  }

  void focusNodeListener(){
    if(focusNode.hasFocus && controller.text.isNotEmpty){
      controller.selection = TextSelection(baseOffset: 0, extentOffset: controller.text.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 45,
        child: TextFormField(
          focusNode: focusNode,
          controller: controller,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          textInputAction: widget.isLast ? TextInputAction.done : TextInputAction.next,
          inputFormatters: [
             LengthLimitingTextInputFormatter(1),
             FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(hintText: '0'),
          onChanged: (value){
            if(value.length == 1){
              focusNode.nextFocus();
            }
            if(value.isEmpty && !widget.isFirst){
             focusNode.previousFocus();
            }
            if(widget.onChanged != null) {
              widget.onChanged!(value);
            }
          }
        ),
      );
  }
}