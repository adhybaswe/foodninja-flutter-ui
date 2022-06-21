import 'package:flutter/material.dart';

class SearchWithFilter extends StatelessWidget {
  const SearchWithFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(249, 168, 77, 0.1),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 18, right: 19),
                    child: Image.asset('assets/images/icon_search.png')),
                Expanded(
                  child: TextField(
                    onChanged: (value) => {},
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "What do you want to order?",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(218, 98, 23, 0.4))),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/icon_filter.png'),
        )
      ],
    );
  }
}
