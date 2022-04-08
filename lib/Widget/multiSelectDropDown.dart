import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multiselect/multiselect.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({ Key? key }) : super(key: key);

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {

  List<String>options = ['Dog','Cat','Others'];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedOption = ''.obs;

  @override

  Widget build(BuildContext context) {

    return Container(
           width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

      child: DropdownButtonHideUnderline(
        child: DropDownMultiSelect(
          options: options,
          whenEmpty: 'pet type',
          onChanged: (value){
            selectedOptionList.value = value;
            selectedOption.value = '';
            selectedOptionList.value.forEach((element) {
              selectedOption.value = selectedOption.value + ' ' + element;            
             });
          },
          selectedValues: selectedOptionList.value,
          ),
      ),
      
    );
  }
}

