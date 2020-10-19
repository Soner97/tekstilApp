import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/colors.dart';
import 'package:tekstilcim/core/components/dropdown_button.dart';
import 'package:tekstilcim/core/components/text.dart';
import 'package:tekstilcim/core/components/context_extension.dart';

class ServiceAD extends StatefulWidget {
  @override
  _ServiceADState createState() => _ServiceADState();
}

class _ServiceADState extends State<ServiceAD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [
              Expanded(child: LabelText('Hangi hizmeti arıyorsunuz?'))
            ],
          ),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colorsx.mainColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.03),
            // padding: context.paddingHorizontal,
            margin: context.paddingHorizontalHigh,
            child: Center(
              child: DropDownButtonWidget(
                hintName: 'Hizmet seçin',
                data: [
                  'Baskıcı',
                  'Çizimci',
                  'Çift İğneci',
                  'Fason Takipçisi',
                  'İmalat Müdürü',
                  'İlik Düğmeci',
                  'Kalite Kontrolcü',
                  'Kompleci',
                  'Makastar',
                  'Makastar Yardımcısı',
                  'Makineci',
                  'Model Makineci',
                  'Modelist',
                  'Meydancı',
                  'Ortacı',
                  'Ovarlokcu',
                  'Pastalcı',
                  'Paketlemeci',
                  'Ponterezci',
                  'Reşmeci',
                  'Serimci',
                  'Stilist',
                  'Ustabaşı',
                  'Ütücü',
                  'Ara Ütücü',
                ],
              ),
            )),
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [Expanded(child: LabelText('Hangi Şehirdesiniz?'))],
          ),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colorsx.mainColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.03),
            // padding: context.paddingHorizontal,
            margin: context.paddingHorizontalHigh,
            child: Center(
              child: DropDownButtonWidget(
                hintName: 'Şehir seçin',
                data: [
                  'Adana',
                  'Adıyaman',
                  'Afyon',
                  'Ağrı',
                  'Amasya',
                  'Ankara',
                  'Antalya',
                  'Artvin',
                  'Aydın',
                  'Balıkesir',
                  'Bilecik',
                  'Bingöl',
                  'Bitlis',
                  'Bolu',
                  'Burdur',
                  'Bursa',
                  'Çanakkale',
                  'Çankırı',
                  'Çorum',
                  'Denizli',
                  'Diyarbakır',
                  'Edirne',
                  'Elazığ',
                  'Erzincan',
                  'Erzurum',
                  'Eskişehir',
                  'Gaziantep',
                  'Giresun',
                  'Gümüşhane',
                  'Hakkari',
                  'Hatay',
                  'Isparta',
                  'Mersin',
                  'İstanbul',
                  'İzmir',
                  'Kars',
                  'Kastamonu',
                  'Kayseri',
                  'Kırklareli',
                  'Kırşehir',
                  'Kocaeli',
                  'Konya',
                  'Kütahya',
                  'Malatya',
                  'Manisa',
                  'K.maraş',
                  'Mardin',
                  'Muğla',
                  'Muş',
                  'Nevşehir',
                  'Niğde',
                  'Ordu',
                  'Rize',
                  'Sakarya',
                  'Samsun',
                  'Siirt',
                  'Sinop',
                  'Sivas',
                  'Tekirdağ',
                  'Tokat',
                  'Trabzon',
                  'Tunceli',
                  'Şanlıurfa',
                  'Uşak',
                  'Van',
                  'Yozgat',
                  'Zonguldak',
                  'Aksaray',
                  'Bayburt',
                  'Karaman',
                  'Kırıkkale',
                  'Batman',
                  'Şırnak',
                  'Bartın',
                  'Ardahan',
                  'Iğdır',
                  'Yalova',
                  'Karabük',
                  'Kilis',
                  'Osmaniye',
                  'Düzce',
                ],
              ),
            )),
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [Expanded(child: LabelText('Hangi İlçedesiniz?'))],
          ),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colorsx.mainColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.03),
            // padding: context.paddingHorizontal,
            margin: context.paddingHorizontalHigh,
            child: Center(
              child: DropDownButtonWidget(
                hintName: 'İlçe seçin',
                data: [
                  'Baskıcı',
                  'Çizimci',
                ],
              ),
            )),
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [Expanded(child: LabelText('Hangi Mahalledesiniz?'))],
          ),
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colorsx.mainColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.03),
            // padding: context.paddingHorizontal,
            margin: context.paddingHorizontalHigh,
            child: Center(
              child: DropDownButtonWidget(
                hintName: 'Mahalle seçin',
                data: [
                  'Baskıcı',
                  'Çizimci',
                ],
              ),
            )),
        Container(
          height: context.dynamicHeight(0.1),
          width: context.dynamicWidth(0.1),
          padding: context.paddingHigh,
          child: Row(
            children: [
              Expanded(
                  child: FittedBox(
                child: LabelText(
                    'İlana açıklama ekleyin, basitçe işinizden bahsedin.'),
              ))
            ],
          ),
        ),
      ],
    ));
  }
}
