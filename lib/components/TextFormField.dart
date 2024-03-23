import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomeTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController myController;
  const CustomeTextFormField(
      {super.key, required this.hint, required this.myController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      cursorColor: Colors.blue,
      validator: (value) {
        if (value == "") {
          return "رجاء املأ الحقل";
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: Colors.grey[500],
              fontSize: 18,
              fontWeight: FontWeight.normal),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}

class CustomePhoneNumberTextFormField extends StatefulWidget {
  final String hint;
  final TextEditingController myController;
  final Widget suffixIcon;
  const CustomePhoneNumberTextFormField(
      {super.key,
      required this.hint,
      required this.myController,
      required this.suffixIcon});

  @override
  State<CustomePhoneNumberTextFormField> createState() =>
      _CustomePhoneNumberTextFormFieldState();
}

class _CustomePhoneNumberTextFormFieldState
    extends State<CustomePhoneNumberTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
          keyboardType: TextInputType.number,
          cursorColor: Colors.blue,
          textAlign: TextAlign.left,
          controller: widget.myController,
          onChanged: (value) => setState(() {}),
          validator: (value) {
            if (value == "") {
              return "الرجاء إدخال رقم الهاتف";
            }
            if (value!.length != 9) {
              return "يجب أن يكون الرقم من 9 خانات";
            }
            final n = num.tryParse(value);
            if (n == null) {
              return 'رقم غير صالح';
            }
          },
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              suffixIcon: widget.suffixIcon,
              prefix: widget.myController.text.length == 9
                  ? Container(
                      // padding: EdgeInsets.all(10),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 15,
                      ),
                    )
                  : null)),
    );
  }
}

// class CustomePhoneNumberTextFormField extends StatelessWidget {
//   final String hint;
//   final TextEditingController myController;
//   final Widget suffixIcon;

//   const CustomePhoneNumberTextFormField(
//       {super.key,
//       required this.hint,
//       required this.myController,
//       required this.suffixIcon});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: TextFormField(
//         keyboardType: TextInputType.number,
//         cursorColor: Colors.blue,
//         textAlign: TextAlign.left,
//         controller: myController,
//         onTap: (){
        
//         },
//         validator: (value) {
//           if (value == "") {
//             return "رجاء املأ الحقل";
//           }
//           if (value!.length != 9) {
//             return "يجب أن يكون الرقم من 9 خانات";
//           }
//           final n = num.tryParse(value);
//           if (n == null) {
//             return 'رقم خاطئ';
//           }
//         },
//         decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: TextStyle(
//                 color: Colors.grey[500],
//                 fontSize: 18,
//                 fontWeight: FontWeight.normal),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//             ),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(10))),
//             suffixIcon: suffixIcon,
//             prefix: myController.text.length > 9? Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
//               child: Icon(Icons.done),
//             )),
//       ),
//     );
//   }

//   // numberValidator(String value) {
//   //   if (value == null) {
//   //     return null;
//   //   }
//   //   final n = num.tryParse(value);
//   //   if (n == null) {
//   //     return '"$value" is not a valid number';
//   //   }
//   //   return null;
//   // }
// }
