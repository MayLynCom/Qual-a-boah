import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/partys.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/maycon.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black),
                ),
                child: Text(
                  'Logo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Categories(),
        SizedBox(
          height: 500,
          child: ListView.builder(
            itemCount: partys.length,
            itemBuilder: (context, index) => ItemCard(party: partys[index]),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Party party;

  const ItemCard({Key? key, required this.party}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      height: 200,
      decoration: BoxDecoration(
          color: party.color,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                image: AssetImage(party.image.toString()),
                fit: BoxFit.fitHeight,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  party.title.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.pin_drop, size: 20,),
                        Text(
                          party.local.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,size: 15,),
                        Text(
                          party.data.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time_filled_outlined, size: 15,),
                        Text(
                          party.time.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Text(
                      'Comprar',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
