import 'package:flutter/material.dart';

class CardNotify extends StatelessWidget {
  const CardNotify({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children:  [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 12,
                  offset: Offset(0,3)
                )
              ],
            ),
            child: Container(
              height: 250,
              width: 100,
              color: Colors.green,
            ),
            
          ),
          Positioned.fill(
            child: Row(
              children:  [
                const Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    child: Icon(Icons.done),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Titulo de subject',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Titulo de id',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Titulo de proyecto',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        '14/06/2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )

        ]
      ),
    );
  }
}