import 'package:flutter/material.dart';
import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/screen/detail/detail_screen.dart';
import 'package:hotelforyou/theme.dart';


class FieldList extends StatelessWidget {
  Field field;

  FieldList({required this.field});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailScreen(field: field,);
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: colorWhite),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius:
                BorderRadius.circular(20),
                child: Image.asset(field.imageAsset,
                    height: 65,
                    width: 100,
                    fit: BoxFit.cover),
              ),
              const SizedBox(width: 8,),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      field.name,
                      maxLines: 1,
                      style: subTitleTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/icons/pin.png",
                          width: 20,
                          height: 20,
                          color: primaryColor500,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Flexible(
                          child: Text(
                            field.address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: addressTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
