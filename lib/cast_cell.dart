import 'package:flutter/material.dart';
class CastCell extends StatelessWidget {
  final image_url = 'https://image.tmdb.org/t/p/w500';
  final cast;
  CastCell(this.cast);
  @override
  Widget build(BuildContext context) {
    print(cast['profile_path']);
    
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
        alignment: Alignment.topCenter,
        child: Container(
          height: 88.0,
          width: 88.0,

          decoration: cast['profile_path']!=null?BoxDecoration(
            shape: BoxShape.circle,

            image: DecorationImage(
              image: NetworkImage(image_url+cast['profile_path']),
              fit: BoxFit.cover
            ),
            
            border: Border.all(color: Colors.white),

          ):BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.6)
          ),
          child: cast['profile_path']==null?Center(child: Text(cast['name'][0],
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'google',
            fontSize: 68.0,
            fontWeight: FontWeight.bold,

          ),
          ),
          
          ):null,
        ),
      ),
      new Text(cast['name'].toString().split(" ")[0],style:TextStyle(
        color:Colors.white,
        fontFamily: 'google',
        fontWeight:FontWeight.w600,
        fontSize: 20.0
      ))
        ],
      )
    );
  }
}