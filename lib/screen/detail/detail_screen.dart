import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/screen/detail/checkout_screen.dart';
import 'package:hotelforyou/theme.dart';
import 'package:hotelforyou/widget/facility_card.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  Field field;

  DetailScreen({required this.field});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          customSliverAppBar(context, field),
          SliverPadding(
            padding:
                const EdgeInsets.only(right: 24, left: 24, bottom: 24, top: 8),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  'Описание:',
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        field.description,
                        overflow: TextOverflow.fade,
                        style: addressTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/pin.png',
                      width: 24,
                      height: 24,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Flexible(
                      child: Text(
                        field.address,
                        overflow: TextOverflow.visible,
                        style: addressTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.money_rubl_circle_fill,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Flexible(
                      child: Text(
                        '${field.price}/сутки',
                        overflow: TextOverflow.visible,
                        style: addressTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Контакты:',
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.phone,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Flexible(
                      child: Text(
                        field.phoneNumber,
                        overflow: TextOverflow.visible,
                        style: addressTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle_rounded,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Flexible(
                      child: Text(
                        field.author,
                        overflow: TextOverflow.visible,
                        style: addressTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Звоните:',
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.date_range_rounded,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      field.openDay,
                      style: descTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: primaryColor500,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      '${field.openTime} - ${field.closeTime}',
                      style: descTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Удобства:',
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                FacilityCardList(facilities: field.facilities),
              ]),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: lightBlue300,
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ]),
        child: ElevatedButton(
            style: buttonText,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen(
                  field: field,
                );
              }));
            },
            child: const Text('Бронировать')),
      ),
    );
  }

  Widget customSliverAppBar(context, field) {
    return SliverAppBar(
      shadowColor: primaryColor500.withOpacity(.2),
      backgroundColor: colorWhite,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black.withOpacity(0.4),
        statusBarIconBrightness: Brightness.light,
      ),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.zero,
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: kToolbarHeight,
          decoration: const BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(borderRadiusSize))),
          child: Center(
            child: Text(
              field.name,
              style: titleTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        background: Image.asset(
          field.imageAsset,
          fit: BoxFit.cover,
        ),
        collapseMode: CollapseMode.parallax,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: colorWhite,
            shape: BoxShape.circle,
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 26,
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColor500,
              )),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: colorWhite,
              shape: BoxShape.circle,
            ),
            child: PopupMenuButton(
              padding: EdgeInsets.zero,
              icon: const Icon(CupertinoIcons.info, color: primaryColor500),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                    enabled: false,
                        child: Text(
                          'Ссылки:',
                          style: subTitleTextStyle.copyWith(color: primaryColor500),
                        )),
                PopupMenuItem(
                    onTap: () => launch(field.authorUrl),
                    child: ListTile(
                      horizontalTitleGap: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.account_circle_outlined, color: primaryColor500,),
                      title: Text(
                        '${field.author}',
                        style: normalTextStyle.copyWith(color: primaryColor500),
                      ),
                    )),
                PopupMenuItem(
                    onTap: () => launch(field.imageUrl),
                    child: ListTile(
                      horizontalTitleGap: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.image_outlined, color: primaryColor500,),
                      title: Text(
                        'Оригинал изображения',
                        style: normalTextStyle.copyWith(color: primaryColor500),
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
      expandedHeight: 300,
    );
  }
}
