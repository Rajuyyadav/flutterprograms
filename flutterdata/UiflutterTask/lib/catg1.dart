
import 'package:flutter/cupertino.dart';
class Category123 extends StatefulWidget {
  const Category123({Key? key}) : super(key: key);

  @override
  State<Category123> createState() => _Category123State();
}

class _Category123State extends State<Category123> {

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('handbag ',style: TextStyle(fontSize: 16),),
        Text('footwear ',style: TextStyle(fontSize: 16),),
        Text('jewellery ',style: TextStyle(fontSize: 16),),
        Text('dresses',style: TextStyle(fontSize: 16),),

      ],);
  }
}
