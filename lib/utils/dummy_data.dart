import 'package:hotelforyou/model/field_facility.dart';
import 'package:hotelforyou/model/field_order.dart';
import 'package:hotelforyou/model/category.dart';
import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/model/user.dart';

List<Field> hotelFieldList = [
  moscow1,
  moscow2,
  moscow3,
  moscow4,
  moscow5,
  petersburg1,
  petersburg2,
  petersburg3,
  petersburg4,
  petersburg5,
  novosibirsk1,
  novosibirsk2,
  novosibirsk3,
  novosibirsk4,
  novosibirsk5,
  yekaterinburg1,
  yekaterinburg2,
  yekaterinburg3,
  yekaterinburg4,
  yekaterinburg5,
  kazan1,
  kazan2,
  kazan3,
  kazan4,
  kazan5,
  novgorod1,
  novgorod2,
  novgorod3,
  novgorod4,
  novgorod5,
  chelyabinsk1,
  chelyabinsk2,
  chelyabinsk3,
  chelyabinsk4,
  chelyabinsk5,
  omsk1,
  omsk2,
  omsk3,
  omsk4,
  omsk5,
  samara1,
  samara2,
  samara3,
  samara4,
  samara5,
  rostov1,
  rostov2,
  rostov3,
  rostov4,
  rostov5,
  ufa1,
  ufa2,
  ufa3,
  ufa4,
  ufa5,
  krasnoyarsk1,
  krasnoyarsk2,
  krasnoyarsk3,
  krasnoyarsk4,
  krasnoyarsk5,
  permian1,
  permian2,
  permian3,
  permian4,
  permian5,
  voronezh1,
  voronezh2,
  voronezh3,
  voronezh4,
  voronezh5,
  volgograd1,
  volgograd2,
  volgograd3,
  volgograd4,
  volgograd5,
];

List<Field> recommendedField = [
  moscow1,
  petersburg1,
  novosibirsk1,
  yekaterinburg1,
  kazan1,
  novgorod1,
  chelyabinsk1,
  omsk1,
  samara1,
  ufa1,
  krasnoyarsk1,
  permian1,
  volgograd1,
  voronezh1
];

List<FieldOrder> dummyUserOrderList = [];

List<String> timeToBook = [
  '06.00',
  '07.00',
  '08.00',
  '09.00',
  '10.00',
  '11.00',
  '12.00',
  '13.00',
  '14.00',
  '15.00',
  '16.00',
  '17.00',
  '18.00',
  '19.00',
  '20.00',
  '21.00',
  '22.00',
  '23.00'
];

class RoomData {
  int numberRoom;
  int people;
  RoomData(this.numberRoom, this.people);
}

class PeopleSleeps {
  int peopleNumber;
  PeopleSleeps(this.peopleNumber);
}

var sampleUser = User(
    id: 'user01',
    name: 'Милана',
    email: 'test@mail.com',
    accountType: 'Премимум',
    imageProfile: 'assets/images/user_profile_example.png');

var _moscow = Category(
  name: 'Москва',
  image: 'assets/icons/sity1.png',
);
var _petersburg = Category(
  name: 'Санкт-Петербург',
  image: 'assets/icons/sity2.png',
);
var _novosibirsk = Category(
  name: 'Новосибирск',
  image: 'assets/icons/sity3.png',
);
var _yekaterinburg = Category(
  name: 'Екатеринбург',
  image: 'assets/icons/sity4.png',
);
var _kazan = Category(
  name: 'Казань',
  image: 'assets/icons/sity5.png',
);
var _novgorod = Category(
  name: 'Нижний Новгород	',
  image: 'assets/icons/sity6.png',
);
var _chelyabinsk = Category(
  name: 'Челябинск',
  image: 'assets/icons/sity1.png',
);
var _omsk = Category(
  name: 'Омск',
  image: 'assets/icons/sity1.png',
);
var _samara = Category(
  name: 'Самара',
  image: 'assets/icons/sity1.png',
);
var _rostov = Category(
  name: 'Ростов-на-Дону',
  image: 'assets/icons/sity1.png',
);
var _ufa = Category(
  name: 'Уфа',
  image: 'assets/icons/sity1.png',
);
var _krasnoyarsk = Category(
  name: 'Красноярск',
  image: 'assets/icons/sity1.png',
);
var _permian = Category(
  name: 'Пермь',
  image: 'assets/icons/sity1.png',
);
var _voronezh = Category(
  name: 'Воронеж',
  image: 'assets/icons/sity1.png',
);
var _volgograd = Category(
  name: 'Волгоград',
  image: 'assets/icons/sity1.png',
);

List<Category> sityCategories = [
  _moscow,
  _petersburg,
  _novosibirsk,
  _yekaterinburg,
  _kazan,
  _novgorod,
  _chelyabinsk,
  _omsk,
  _samara,
  _rostov,
  _ufa,
  _krasnoyarsk,
  _permian,
  _voronezh,
  _volgograd
];

var _wifi = FieldFacility(name: 'WiFi', imageAsset: 'assets/icons/wifi.png');
var _toilet = FieldFacility(name: 'Туалет', imageAsset: 'assets/icons/toilet.png');
var _gym = FieldFacility(name: 'Спортзал', imageAsset: 'assets/icons/gym.png');
var _canteen = FieldFacility(name: 'Столовая', imageAsset: 'assets/icons/canteen.png');
var _pool = FieldFacility(name: 'Бассейн', imageAsset: 'assets/icons/pool.png');
var _charging = FieldFacility( name: 'Зона отдыха', imageAsset: 'assets/icons/park.png');

Field moscow1 = Field(
  id: '01',
  name: 'Отель Империал Плаза',
  description: 'Мечтаешь о первоклассном отеле? Добро пожаловать в отель «Отель Империал Плаза» расположен в Москве. Этот отель находится в 4 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Комсомольская (Сокольническая), Сад им. Баумана и Аптекарский огород.',
  address: 'улица Краснопрудная, дом 12, Москва',
  category: _moscow,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/1.jpg',
  price: 80000,);

Field moscow2 = Field(
    id: '02',
    name: 'Апарт-Отель Page 20',
    description: 'Апарт-Отель «Page 20» расположен в 2 км от центра Москвы. Апарт-отель находится на 20 этаже дома-книжки на Новом Арбате «The Book». В шаговой доступности от отеля расположено множество кафе, ресторанов, магазинов, до известных театров и музеев можно прогуляться пешком.',
    address: 'улица Новый Арбат, дом 15, Москва',
    category: _moscow,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/2.jpg',
    price: 100000);

Field moscow3 = Field(
    id: '03',
    name: 'Отель Звёзды Арбата',
    description: 'Отель «Звёзды Арбата» (ранее «Мариотт Новый Арбат») расположен в самом центре Москвы на Новом Арбате, на берегу Москвы-реки рядом с историческим центром города недалеко от Старого Арбата, правительственных зданий и посольств.',
    address: 'улица Новый Арбат, дом 32, Москва',
    category: _moscow,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/3.jpg',
    price: 115000);

Field moscow4 = Field(
    id: '04',
    name: 'Мандарин Гарден Отель',
    description: 'Отель «Мандарин Москва» находится в Москве. Этот отель расположен в 4 км от центра города, вблизи трёх центральных вокзалов: Ленинградского, Комсомольского и Казанского и станций метро «Комсомольская», «Красносельская», «Бауманская», «Красные Ворота». Рядом с отелем: продуктовые магазины, супермаркеты, аптеки, салоны красоты. В соседнем здании — институт пластической хирургии и косметологии.',
    address: 'улица Ольховская, дом 23, Москва',
    category: _moscow,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/4.jpg',
    price: 50000);

Field moscow5 = Field(
    id: '05',
    name: 'Отель New City Inn',
    description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Отель New City Inn» располагается в Москве. Этот отель находится в 3 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Павелецкая (Кольцевая), Театр на Таганке и Государственная Третьяковская галерея.',
    address: 'Павелецкая площадь, дом 1а, строение 1, Москва',
    category: _moscow,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/6.jpg',
    price: 75000);

Field petersburg1 = Field(
    id: '06',
    name: 'Отель Palace Bridge Hotel',
    description: 'Отель «Palace Bridge Hotel» расположен в центре Санкт-Петербурга на Васильевском острове.',
    address: 'Биржевой переулок 2-4, Санкт-Петербург',
    category: _petersburg,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/6.jpg',
    price: 85000);

Field petersburg2 = Field(
    id: '07',
    name: 'Отель Vasilievsky Hotel',
    description: 'Отель «Vasilievsky» расположен в тихом районе Васильевского острова, в 200 м от набережной и 700 м от станции метро «Василеостровская». До Невского проспекта и Эрмитажа от отеля можно добраться пешком примерно за 20 минут.',
    address: '8-я линия Васильевского острова, 11-13, Санкт-Петербург',
    category: _petersburg,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/7.jpg',
    price: 65000);

Field petersburg3 = Field(
    id: '08',
    name: 'Отель NordWest',
    description: 'Хороший вариант для людей, любящих отдыхать в компании. Гостевой дом «Отель NordWest» находится в Санкт-Петербурге. Этот гостевой дом расположен в 3 км от центра города. Рядом с гостевым домом — Площадь Восстания, Анненкирхе и Михайловский замок.',
    address: 'улица Восстания, дом 13, Санкт-Петербург',
    category: _petersburg,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/8.jpg',
    price: 60000);

Field petersburg4 = Field(
    id: '09',
    name: 'Отель Талисман Гороховая',
    description: 'Отель «Талисман Гороховая» находится в городе Санкт-Петербург. Этот отель находится в пешей доступности от центра города.',
    address: 'улица Гороховая, дом 41, Санкт-Петербург',
    category: _petersburg,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/9.jpg',
    price: 70000);

Field petersburg5 = Field(
    id: '010',
    name: 'Апартаменты Дом у Эрмитажа',
    description: 'Апартаменты «Дом У Эрмитажа» расположены в историческом центре Санкт-Петербурга, всего в 500 м от знаменитого Эрмитажа. Рядом находятся главные достопримечательности города - Казанский собор, Дворцовая площадь, Исаакиевский собор, Спас на Крови.',
    address: 'набережная Реки Мойки, дом 42, Санкт-Петербург',
    category: _petersburg,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/10.jpeg',
    price: 80000);

Field novosibirsk1 = Field(
  id: '011',
  name: 'Апартаменты Atmosfera Sna',
  description: 'Подходящий вариант для бюджетного отдыха — отель «Atmosfera Sna квартиры посуточно» располагается в Новосибирске. Этот отель находится в 6 км от центра города. Рядом с отелем — Золотая Нива, Берёзовая роща и Центральный парк.',
  address: 'улица Сибирская, дом 42, Новосибирск',
  category: _novosibirsk,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/11.jpg',
  price: 80000,);

Field novosibirsk2 = Field(
    id: '012',
    name: 'Отель Аванта',
    description: 'Отдых должен быть комфортным! Отель «Отель Аванта» находится в Новосибирске. Этот отель расположен в 3 км от центра города. Рядом с отелем — Берёзовая роща, Берёзовая роща и Центральный парк.',
    address: 'улица Гоголя, дом 189/1, Новосибирск',
    category: _novosibirsk,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/12.jpg',
    price: 100000);

Field novosibirsk3 = Field(
    id: '013',
    name: 'Отель Авеню',
    description: 'Отель «Avenu» находятся в Новосибирске. Этот отель расположен в пешей доступности от центра города. Рядом с отелем — Площадь Ленина, Новосибирский Государственный музей и Центральный парк.',
    address: 'улица Советская, д.57, Новосибирск',
    category: _novosibirsk,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/13.jpg',
    price: 115000);

Field novosibirsk4 = Field(
    id: '014',
    name: 'AZIMUT Отель Сибирь',
    description: 'Отель, где хорошо отдыхать перед долгими прогулками. «AZIMUT Отель Новосибирск» находится в Новосибирске. Этот отель располагается 1 км от центра города. Рядом с отелем — Площадь Гарина-Михайловского, Первомайская площадь и Новосибирский Государственный музей.',
    address: 'ул. Ленина, д. 21, Новосибирск',
    category: _novosibirsk,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/14.jpg',
    price: 50000);

Field novosibirsk5 = Field(
    id: '015',
    name: 'Апарт-отель BonApart',
    description: '«Апарт-отель BonApart» расположен в Новосибирске. Этот апарт-отель находится в пешей доступности от центра города. Рядом с апарт-отелем можно прогуляться. Неподалёку: Центральный парк, Стадион «Спартак» и Новосибирский театр оперы и балета.',
    address: 'улица Ядринцевская, д.71, Новосибирск',
    category: _novosibirsk,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/15.jpg',
    price: 75000);

Field yekaterinburg1 = Field(
    id: '016',
    name: 'Hyatt Regency Ekaterinburg',
    description: 'Пятизвёздочный отель «Hyatt Regency Ekaterinburg» расположен в центре Екатеринбурга на набережной реки Исеть в шаговой доступности от знаковых достопримечательностей города. Аэропорт «Кольцово» располагается в 20 км от отеля.',
    address: 'ул. Бориса Ельцина, 8, Екатеринбург',
    category: _yekaterinburg,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/16.jpg',
    price: 85000);

Field yekaterinburg2 = Field(
    id: '017',
    name: 'Marins Park Hotel Yekaterinburg',
    description: 'Отель «Маринс Парк Отель Екатеринбург» располагается в центре города Екатеринбурга, напротив железнодорожного вокзала. Аэропорт Кольцово находится в удобной транспортной доступности.',
    address: 'улица Челюскинцев, д.106, Екатеринбург',
    category: _yekaterinburg,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/17.jpg',
    price: 65000);

Field yekaterinburg3 = Field(
    id: '018',
    name: 'Отель Four Elements Ekaterinburg',
    description: 'Отдых должен быть комфортным! Отель «Отель Four Elements Ekaterinburg» находится в Екатеринбурге. Этот отель расположен в пешей доступности от центра города. Рядом с отелем можно прогуляться. Неподалёку: Улица Вайнера, Ельцин Центр и Смотровая площадка на здании «Высоцкий».',
    address: 'проспект Ленина, 9A, Екатеринбург',
    category: _yekaterinburg,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/18.jpg',
    price: 60000);

Field yekaterinburg4 = Field(
    id: '019',
    name: 'Гостиница Урал',
    description: 'Гостиница «Урал» расположена в тихом центре Екатеринбурга, в пешей доступности от отеля множество интересных мест: Театра оперы и балета, Коляда-Театр, Театра музыкальной комедии, Театра кукол, Храма на Крови, Дома Кино и Свердловская государственная Академическая Филармония.',
    address: 'улица Мичурина, д.57, Екатеринбург',
    category: _yekaterinburg,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/19.jpg',
    price: 70000);

Field yekaterinburg5 = Field(
    id: '020',
    name: 'Отель Live',
    description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Отель Live» располагается в Екатеринбурге. Этот отель находится в пешей доступности от центра города. Рядом с отелем можно прогуляться. Неподалёку: Екатеринбургский зоопарк, Свято-Троицкий Кафедральный собор и Памятник клавиатуре.',
    address: 'Улица Красноармейская, д.72, Екатеринбург',
    category: _yekaterinburg,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/20.jpg',
    price: 80000);

Field kazan1 = Field(
  id: '021',
  name: 'Отель Park',
  description: 'Место для отдыха после погони за впечатлениями! Отель «Отель Park» находится в Казани. Этот отель располагается в центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с отелем можно прогуляться. Неподалёку: Миллениум Парк, Площадь Габдуллы Тукая и Улица Баумана.',
  address: 'Мини-отель Амстердам на Лобачевского',
  category: _kazan,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/21.jpg',
  price: 80000,);

Field kazan2 = Field(
    id: '022',
    name: 'Мини-отель Амстердам на Лобачевского',
    description: 'Всё, что нужно для ночлега! Мини-отель «Мини-отель Амстердам на Лобачевского» находится в Казани. Этот мини-отель расположен 1 км от центра города. Рядом с мини-отелем — Татарский академический государственный театр оперы и балета, Парк Черное озеро и Петропавловский собор.',
    address: 'улица Лобачевского 8, Казань',
    category: _kazan,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/22.jpg',
    price: 100000);

Field kazan3 = Field(
    id: '023',
    name: 'Гостиница Мираж',
    description: 'Мечтаешь о первоклассном отеле? Добро пожаловать в отель «Гостиница Мираж» находится в Казани. Этот отель располагается неподалёку от центра города. Рядом с отелем можно прогуляться. Неподалёку: Кремлёвская, Центральный стадион и Национальный музей Республики Татарстан.',
    address: 'ул. Московская, 5, Казань',
    category: _kazan,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/23.jpg',
    price: 115000);

Field kazan4 = Field(
    id: '024',
    name: 'Отель «Дон Кихот»',
    description: 'Недорогой Отель Дон Кихот находится в городе Казань. Этот отель находится в пешей доступности от центра города.',
    address: 'ул. Бурхана Шахиди, 11/16, Казань',
    category: _kazan,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/24.jpg',
    price: 50000);

Field kazan5 = Field(
    id: '025',
    name: 'Отель Армения',
    description: 'В погоне за впечатлениями важно возвращаться туда, где можно хорошо отдохнуть. Отель «Отель Армения» расположен в Казани. Этот отель находится в 5 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Парк Горького, Аквапарк Ривьера и Татнефть-Арена.',
    address: 'улица Пионерская, д. 8б, Казань',
    category: _kazan,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/25.jpg',
    price: 75000);

Field novgorod1 = Field(
    id: '026',
    name: 'GREENFEEL Novgorod',
    description: 'Удачный вариант для активного туриста! Отель «GREENFEEL Novgorod» находится в Великом Новгороде. Этот отель располагается в пешей доступности от центра города. Рядом с отелем можно прогуляться. Неподалёку: Ярославский суд, Софийский собор и Памятник Тысячелетия России.',
    address: 'улица Фёдоровский ручей, 2/13, 2, Великий Новгород',
    category: _novgorod,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/26.jpg',
    price: 85000);

Field novgorod2 = Field(
    id: '027',
    name: 'Park Inn Великий Новгород',
    description: 'Четырехзвездочный отель «Park Inn Великий Новгород», в европейскую архитектуру которого гармонично вплетены традиционные местные мотивы, расположен в новой части Великого Новгорода у реки Волхов, в минуте езды от шоссе Москва - Санкт-Петербург. Расстояние до озера Ильмень составляет 2 км, а кремль находится в 3 км от отеля.',
    address: 'Студенческая улица 2 , Великий Новгород',
    category: _novgorod,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/27.jpg',
    
    price: 65000);

Field novgorod3 = Field(
    id: '028',
    name: 'Гостиница Ткачи',
    description: 'Удачный вариант для активного туриста! Отель «Гостиница Ткачи» расположен в Боровичах. Этот отель находится в самом центре города. Утром — выпейте кофе, наблюдая из окна за жизнью города.',
    address: 'улица Дзержинского, д. 8, Боровичи',
    category: _novgorod,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/28.jpg',
    price: 60000);

Field novgorod4 = Field(
    id: '029',
    name: 'Отель Веряжский',
    description: 'Путешествовать экономно — легко. Отель «Отель Веряжский» располагается в Великом Новгороде. Этот отель находится в 4 км от центра города. Рядом с отелем — Выставочный центр Экспоновгород, Кремлевский парк и Новгородский Кремль.',
    address: 'улица Нехинская, 44, корп.2, Великий Новгород',
    category: _novgorod,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/29.jpg',
    price: 70000);

Field novgorod5 = Field(
    id: '030',
    name: 'Отель Аист',
    description: 'Отель «Аист» расположен неподалёку от исторического центра Великого Новгорода, в шаговой доступности от Церкви Cвятого Князя Александра Невского.',
    address: 'улица Центральная, д. 6, Великий Новгород',
    category: _novgorod,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/30.jpg',
    price: 80000);

Field chelyabinsk1 = Field(
  id: '031',
  name: 'Отель Малахит',
  description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Отель Малахит» находится в Челябинске. Этот отель располагается 1 км от центра города. Рядом с отелем — Исторический музей Южного Урала, Дворец спорта Юность и Кировка.',
  address: 'улица Труда, д.153, Челябинск',
  category: _chelyabinsk,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/31.jpg',
  price: 80000,);

Field chelyabinsk2 = Field(
    id: '032',
    name: 'Отель Маркштадт',
    description: 'Отель «Маркштадт» расположен в центре Челябинска. Поблизости находится сквер «Алое поле», пешеходная улица Кирова, театры, музеи, офисные центры.',
    address: 'улица Карла Маркса, д.131, Челябинск',
    category: _chelyabinsk,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/32.jpg',
    price: 100000);

Field chelyabinsk3 = Field(
    id: '033',
    name: 'Отель Арбат',
    description: 'Хороший выбор, когда понежиться в отеле так же важно, как и погулять. Отель «Отель Арбат» находится в Челябинске. Этот отель располагается в центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с отелем можно прогуляться. Неподалёку: Аллея Славы, Площадь Революции и Центр международной торговли.',
    address: 'Советская улица, 38, Челябинск',
    category: _chelyabinsk,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/33.jpg',
    price: 115000);

Field chelyabinsk4 = Field(
    id: '034',
    name: 'Отель Radisson Blu Челябинск',
    description: 'Отель «Radisson Blu Челябинск» располагается в Челябинске, в пешей доступности от центра города. Рядом с отелем находятся автобусная, трамвайная и троллейбусная остановки, а железнодорожная станция — в 4 км.',
    address: 'Улица Труда 179, Челябинск',
    category: _chelyabinsk,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/34.jpg',
    price: 50000);

Field chelyabinsk5 = Field(
    id: '035',
    name: 'Галактика Развлечений',
    description: 'Не допускается курение на территории отеля.',
    address: 'проспект Комсомольский, д.16, Челябинск',
    category: _chelyabinsk,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/35.jpg',
    price: 75000);

Field omsk1 = Field(
    id: '036',
    name: 'Отель Турист',
    description: 'Отель «Турист» расположен в Омске. Этот отель находится в пешей доступности от центра города. Неподалёку: Омский государственный историко - краеведческий музей, Омский Областной Музей Изобразительных искусств им. М.А. Врубеля и Воскресенский Сквер.',
    address: 'ул.Броз Тито, д.2, Омск',
    category: _omsk,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/36.jpg',
    price: 85000);

Field omsk2 = Field(
    id: '037',
    name: 'Гостиница Аэро',
    description: 'Крепко спать не запретишь! Двухзвёздочная гостиница «Аэро» располагается в Омске, в 5 км от центра города. Недалеко от отеля гости могут прогуляться в Парке 30-летия победы и в Парке имени 300-летия Омска.',
    address: 'ул.Трансcибирская 25, Омск',
    category: _omsk,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/37.jpg',
    price: 65000);

Field omsk3 = Field(
    id: '038',
    name: 'Отель Малибу',
    description: 'Хороший выбор, когда понежиться в отеле так же важно, как и погулять. Отель «Отель Малибу» находится в Омске. Этот отель располагается 1 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Сквер им. Дзержинского, Тобольские ворота и Омская крепость.',
    address: 'улица Фрунзе, д. 47, Омск',
    category: _omsk,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/38.jpg',
    price: 60000);

Field omsk4 = Field(
    id: '039',
    name: 'Мини-Отель Гусарский',
    description: 'Отличный вариант для короткой остановки. Мини-отель «Мини-Отель Гусарский» находится в Омске. Этот мини-отель располагается в центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с мини-отелем — Сквер им. Дзержинского, Омская крепость и Воскресенский Сквер.',
    address: 'улица Гусарова, д. 13, Омск',
    category: _omsk,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/39.jpg',
    price: 70000);

Field omsk5 = Field(
    id: '040',
    name: 'Гостиница Молодежная',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Гостиница Молодежная» находится в Омске. Этот отель располагается в 6 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Парк имени 300-летия Омска, Парк Зеленый остров и Советский парк.',
    address: 'улица Перелета, д.1, Омск',
    category: _omsk,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/40.jpg',
    price: 80000);

Field samara1 = Field(
  id: '041',
  name: 'Отель Old City Hotel Samara',
  description: 'Отель Old City Hotel Samara находится в городе Самара. Этот отель находится в пешей доступности от центра города.',
  address: 'улица Фрунзе, д. 96в, Самара',
  category: _samara,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/41.jpg',
  price: 80000,);

Field samara2 = Field(
    id: '042',
    name: 'Отель Ibis Samara',
    description: 'Отель «Ибис» расположен в городе Самара, в 10 км от центра города. За 10 минут от отеля можно доехать до железнодорожного вокзала и речного порта. Аэропорт Курумоч находится в 42 км от отеля.',
    address: 'Улица Ново-Садовая 160 Д, стр.3, Самара',
    category: _samara,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/42.jpg',
    price: 100000);

Field samara3 = Field(
    id: '043',
    name: 'Отель Браво Люкс',
    description: 'В погоне за впечатлениями важно возвращаться туда, где можно хорошо отдохнуть. Отель «Отель Браво Люкс» находится в Самаре. Этот отель располагается в 7 км от центра города. Рядом с отелем — Парк Юрия Гагарина, Самарский государственный университет и Парк Горького.',
    address: 'улица Ново-Садовая, д.303А, Самара',
    category: _samara,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/43.jpg',
    price: 115000);

Field samara4 = Field(
    id: '044',
    name: 'Отель Hampton by Hilton Samara',
    description: 'Отель «Hampton by Hilton Samara» расположен в культурно-исторической части Самары, в 500 метрах от центрального железнодорожного вокзала, а также в 2 км от набережной Волги. В 1,8 км от отеля находится центральная площадь имени Куйбышева, Самарская государственная филармония и архитектурный памятник в готическом стиле: Храм Пресвятого Сердца Иисуса. Расстояние до международного аэропорта Курумоч составляет 40 км.',
    address: 'улица Льва Толстого, дом 131, Самара',
    category: _samara,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/44.jpg',
    price: 50000);

Field samara5 = Field(
    id: '045',
    name: 'Отель Макхолл',
    description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Отель Макхолл» располагается в Самаре. Этот отель находится в 4 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Гагаринская, Парк Победы и Музей авиации и космонавтики им. С.П. Королева.',
    address: 'улица Революционная, д. 146в, Самара',
    category: _samara,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/45.jpg',
    price: 75000);

Field rostov1 = Field(
    id: '046',
    name: 'Гостевой Дом Селена',
    description: 'Меняем стандартную обстановку отеля на уют гостевого дома! Гостевой дом «Гостевой Дом Селена» расположен в Ростове-на-Дону. Этот гостевой дом находится в 5 км от центра города. Рядом с гостевым домом — Стадион «Олимп-2», Парк им. Н. Островского и Парк им. Вити Черевичкина.',
    address: 'улица Буйнакская, д. 3/54, Ростов-на-Дону',
    category: _rostov,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/46.jpg',
    price: 85000);

Field rostov2 = Field(
    id: '047',
    name: 'Отель Панфилов',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Отель Панфилов» располагается в Ростове-на-Дону. Этот отель находится в 3 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Аквапарк H2О, Парк имени Октябрьской революции и Парк им. Н. Островского.',
    address: 'проспект Ленина, д.125/3, Ростов-на-Дону',
    category: _rostov,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/47.jpg',
    price: 65000);

Field rostov3 = Field(
    id: '048',
    name: 'Мини-отель В Ростове Жить',
    description: 'Меняем стандартную обстановку отеля на домашний уют! Мини-отель «Мини-отель В Ростове Жить» расположен в Ростове-на-Дону. Этот мини-отель находится в 4 км от центра города. Рядом с мини-отелем — Парк им. города Плевен, Ботанический сад Южного федерального университета и Аллея Роз.',
    address: 'Мичуринская улица, д.51, Ростов-на-Дону',
    category: _rostov,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/48.jpg',
    price: 60000);

Field rostov4 = Field(
    id: '049',
    name: 'Отель Аверон',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Отель Аверон» находится в Ростове-на-Дону. Этот отель расположен в 5 км от центра города. Рядом с отелем — Стадион «Ростов Арена», Парк имени Октябрьской революции и Набережная реки Дон.',
    address: 'улица Левобережная, д.16, Ростов-на-Дону',
    category: _rostov,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/49.jpg',
    price: 70000);

Field rostov5 = Field(
    id: '050',
    name: 'Апарт-Отель Грин Холл',
    description: '«Апарт-Отель Грин Холл» находится в Ростове-на-Дону. Этот апарт-отель располагается в 6 км от центра города. Рядом с апарт-отелем — Парк им. Н. Островского, Стадион «Олимп-2» и Парк имени Октябрьской революции.',
    address: 'улица Просвещения, д.55, Ростов-на-Дону',
    category: _rostov,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/50.jpg',
    price: 80000);

Field ufa1 = Field(
  id: '051',
  name: 'Отель Нестеров Плаза',
  description: 'Отель «Нестеров Плаза» находится в историческом центре города. Недалеко от отеля расположен Башкирский государственный театр оперы и балета и художественный музей им. Нестерова. Также в шаговой доступности от отеля находятся парки, городской творческий центр «Арт-Квадрат», рестораны, магазины, бизнес-центр.',
  address: 'Верхнеторговая пл., 2, Уфа',
  category: _ufa,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/51.jpg',
  price: 80000,);

Field ufa2 = Field(
    id: '052',
    name: 'Отель Уфа-Астория',
    description: 'Ищите возможность отдохнуть и посмотреть на город? Отель «Отель Уфа-Астория» располагается в Уфе. Этот отель находится в центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с отелем можно прогуляться. Неподалёку: Башкирский государственный театр оперы и балета, Национальный музей Башкортостана и Памятник Салавату Юлаеву.',
    address: 'улица Карла Маркса, д.25, Уфа',
    category: _ufa,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/52.jpg',
    price: 100000);

Field ufa3 = Field(
    id: '053',
    name: 'Гостиница Агидель',
    description: 'В погоне за впечатлениями важно возвращаться туда, где можно хорошо отдохнуть. Отель «Гостиница Агидель» расположен в Уфе. Этот отель находится в самом центре города. Утром — выпейте кофе, наблюдая из окна за жизнью города. Рядом с отелем можно прогуляться. Неподалёку: Башкирский государственный театр оперы и балета, Национальный музей Башкортостана и Парк Салавата Юлаева.',
    address: 'улица Ленина, д. 16, Уфа',
    category: _ufa,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/53.jpg',
    price: 115000);

Field ufa4 = Field(
    id: '054',
    name: 'Hilton Garden Inn Ufa Riverside',
    description: 'Ищите возможность отдохнуть и посмотреть на город? Отель «Hilton Garden Inn Ufa Riverside» расположен в Уфе. Этот отель находится 1 км от центра города. Рядом с отелем — Памятник Салавату Юлаеву, Башкирский государственный театр оперы и балета и Национальный музей Башкортостана.',
    address: 'улица Аксакова 4, Уфа',
    category: _ufa,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/54.jpg',
    price: 50000);

Field ufa5 = Field(
    id: '055',
    name: 'Гостиница Алга',
    description: 'Путешествовать экономно — легко. Отель «Гостиница Алга» находится в Уфе. Этот отель располагается 1 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Парк им. Ивана Якутова, Башкирский государственный театр оперы и балета и Национальный музей Башкортостана.',
    address: 'улица Зенцова, д.73, Уфа',
    category: _ufa,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/55.jpg',
    price: 75000);

Field krasnoyarsk1 = Field(
    id: '056',
    name: 'Гостиница Ермак',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Гостиница Ермак» находится в Красноярске. Этот отель располагается в центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с отелем — Театр оперы и балета, Красноярский краевой краеведческий музей и Красноярский художественный музей им. В.И. Сурикова.',
    address: 'улица Сурикова, д.13, Красноярск',
    category: _krasnoyarsk,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/56.jpg',
    price: 85000);

Field krasnoyarsk2 = Field(
    id: '057',
    name: 'Мини-Отель Weekend',
    description: 'Всё, что нужно для ночлега! Мини-отель «Мини-Отель Weekend» находится в Красноярске. Этот мини-отель расположен 2 км от центра города. Рядом с мини-отелем можно прогуляться. Неподалёку: Площадь 350-летия Красноярска, Парк культуры и отдыха имени А. М. Горького и Музей-усадьба В.И.Сурикова.',
    address: 'проспект Мира, д. 109, Красноярск',
    category: _krasnoyarsk,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/57.jpg',
    price: 65000);

Field krasnoyarsk3 = Field(
    id: '058',
    name: 'Апарт-отель Артепартс',
    description: '«Апарт-отель Артепартс» находится в Красноярске. Этот апарт-отель располагается 2 км от центра города. Рядом с апарт-отелем — Площадь 350-летия Красноярска, Парк культуры и отдыха имени А. М. Горького и Музей-усадьба В.И.Сурикова.',
    address: 'ул. Мира, д. 105, лит. А, Красноярск, Красноярск',
    category: _krasnoyarsk,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/58.jpg',
    price: 60000);

Field krasnoyarsk4 = Field(
    id: '059',
    name: 'Гостиница Огни Енисея',
    description: 'Удачный вариант для активного туриста! Отель «Гостиница Огни Енисея» располагается в Красноярске. Этот отель находится в самом центре города. Перед сном есть возможность прогуляться вдоль главных достопримечательностей. Рядом с отелем можно прогуляться. Неподалёку: Красноярский краевой краеведческий музей, Театр оперы и балета и Театральная площадь.',
    address: 'улица Дубровинского, д.80, Красноярск',
    category: _krasnoyarsk,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/59.jpg',
    price: 70000);

Field krasnoyarsk5 = Field(
    id: '060',
    name: 'Отель AMAKS Сити',
    description: 'В погоне за впечатлениями важно возвращаться туда, где можно хорошо отдохнуть. Отель «Отель AMAKS Сити» расположен в Красноярске. Этот отель находится неподалёку от центра города. Рядом с отелем можно прогуляться. Неподалёку: Красноярский краевой краеведческий музей, Театр оперы и балета и Театральная площадь.',
    address: 'улица Матросова, д.2, Красноярск',
    category: _krasnoyarsk,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/60.jpg',
    price: 80000);

Field permian1 = Field(
  id: '061',
  name: 'Апартаменты Зона комфорта',
  description: 'Апартаменты «Зона комфорта» расположен в 3 км от центра города Пермь.',
  address: 'бульвар Гагарина, д.65 А/1, Пермь',
  category: _permian,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/61.jpg',
  price: 80000,);

Field permian2 = Field(
    id: '062',
    name: 'Холидей Инн Пермь',
    description: 'Отель «Холидей Инн Пермь» располагается в Перми. Этот отель находится неподалёку от центра города. Рядом с отелем — Пермский музей современного искусства.',
    address: 'бульвар Гагарина, д.65 А, Пермь',
    category: _permian,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/62.jpg',
    price: 100000);

Field permian3 = Field(
    id: '063',
    name: 'Мини-отель Серединная 3',
    description: 'Всё, что нужно для ночлега! Мини-отель «Мини-отель Серединная 3» расположен в Перми. Этот мини-отель находится 2 км от центра города. Рядом с мини-отелем — Пермский музей современного искусства, Центральный парк развлечений им. Горького и Пермский оперный театр.',
    address: 'город Пермь улица Серединная дом 3, Пермь',
    category: _permian,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/63.jpg',
    price: 115000);

Field permian4 = Field(
    id: '064',
    name: 'Хостел Репа',
    description: '«Хостел Репа» располагается в Перми. Этот хостел находится в 3 км от центра города. Рядом с хостелом — Сквер имени Ф. Э. Дзержинского, Пермский государственный университет и Городская эспланада.',
    address: 'улица Толмачёва, д.11, Пермь',
    category: _permian,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/64.jpg',
    price: 50000);

Field permian5 = Field(
    id: '065',
    name: 'Мини-Отель Скорпион',
    description: 'Мини-отель «Скорпион» находится в Перми. Этот мини-отель расположен 2 км от центра города. Рядом с мини-отелем — Стадион «Звезда», Центральный парк развлечений им. Горького и Памятник Пермяк – Соленые Уши.',
    address: 'улица Полины Осипенко, д. 57, Пермь',
    category: _permian,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/65.jpg',
    price: 75000);

Field voronezh1 = Field(
    id: '066',
    name: 'Отель Mercure Voronezh',
    description: 'Отель «Mercure Voronezh Center» находится центре города, недалеко от реки Воронеж. Так как отель находится в деловой и культурной части города, поблизости много торгово развлекательных центров и достопримечательностей.',
    address: 'улица Кирова, д.6А, Воронеж',
    category: _voronezh,
    facilities: [_toilet],
    author: 'Lucas Marcomini',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0855 6666 7777',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/66.jpg',
    price: 85000);

Field voronezh2 = Field(
    id: '067',
    name: 'Отель Дегас Лайт',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Отель Дегас Лайт» находится в Воронеже. Этот отель расположен неподалёку от центра города. Рядом с отелем — Памятник Второй Мировой войны в Воронеже, Дворец творчества детей и молодежи и Петровский сквер.',
    address: 'улица Пятницкого, д.65а, Воронеж',
    category: _voronezh,
    facilities: [_wifi, _toilet, _pool],
    author: 'Denise chan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0811 2222 3333',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/67.jpg',
    price: 65000);

Field voronezh3 = Field(
    id: '068',
    name: 'Отель SoleMio Hotel',
    description: 'Место для отдыха после погони за впечатлениями! Отель «Отель SoleMio Hotel» находится в Воронеже. Этот отель расположен в 3 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Кафедральный собор в Воронеже, Петровский сквер и Парк Орленок.',
    address: 'ул. Сакко и Ванцетти 69, Воронеж',
    category: _voronezh,
    facilities: [_toilet, _gym, _charging],
    author: 'Rob coates',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0877 8888 9999',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '15.00',
    imageAsset: 'assets/images/68.jpg',
    price: 60000);

Field voronezh4 = Field(
    id: '069',
    name: 'Апарт-отель Фараон',
    description: 'Апарт-отель «Фараон» расположен в Воронеже. Расстояние до автовокзала составляет 3.6 км, до ЖД вокзала — 4.8 км, до аэропорта — 18 км.',
    address: 'Улица Красных Зорь, д.2А, Воронеж',
    category: _voronezh,
    facilities: [_toilet, _canteen],
    author: 'Izuddin Helmi Adnan',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0844 5555 6666',
    openDay: 'Все дни',
    openTime: '08.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/69.jpg',
    price: 70000);

Field voronezh5 = Field(
    id: '070',
    name: 'Отель Voronezh Marriott',
    description: 'Отель «Voronezh Marriott» расположен в центре города. В пешей доступности находятся Памятник Белому Биму, Чёрное ухо, Академический театр драмы им. А. Кольцова., Покровский собор находится в 0,6 км, Площадь Ленина — в 0,9 км от него.',
    address: 'проспект Революции, 38, Воронеж',
    category: _voronezh,
    facilities: [_toilet, _gym, _pool, _canteen],
    author: 'Sergei Wing',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0899 1010 2222',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/70.jpg',
    price: 80000);

Field volgograd1 = Field(
  id: '071',
  name: 'Отель Голд',
  description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Отель Голд» расположен в Волгограде. Этот отель находится 2 км от центра города. Рядом с отелем можно прогуляться. Неподалёку: Цирк, Детский городской парк и Площадь Павших Борцов.',
  address: 'ул. Новорядская, д. 4, Волгоград',
  category: _volgograd,
  facilities: [_wifi, _toilet],
  author: 'Daniel larionov',
  authorUrl: '',
  imageUrl: '',
  phoneNumber: '0812 2345 6789',
  openDay: 'Будние дни',
  openTime: '08.00',
  closeTime: '16.00',
  imageAsset: 'assets/images/71.jpg',
  price: 80000,);

Field volgograd2 = Field(
    id: '072',
    name: 'Гостиница Каштан',
    description: 'Отель, где хорошо отдыхать перед долгими прогулками. Отель «Гостиница Каштан» расположен в Волгограде. Этот отель находится 1 км от центра города. Рядом с отелем — Площадь Павших Борцов, Детский городской парк и Волгоградский планетарий.',
    address: 'улица Невская, д.6 А, Волгоград',
    category: _volgograd,
    facilities: [_wifi, _toilet, _gym, _canteen],
    author: 'Fulvio ambrosanio',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0812 3333 4444',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '22.00',
    imageAsset: 'assets/images/72.jpg',
    price: 100000);

Field volgograd3 = Field(
    id: '073',
    name: 'Гостиница Волгоград',
    description: 'Отель «Волгоград» расположен в самом центре Волгограда, в 7 минутах ходьбы от главного железнодорожного вокзала. Недалеко от отеля находится Комсомольский сад.',
    address: 'улица Мира, д.12, Волгоград',
    category: _volgograd,
    facilities: [_wifi, _toilet, _canteen, _charging, _gym],
    author: 'Meritt Thomas',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0866 7777 8888',
    openDay: 'Все дни',
    openTime: '07.00',
    closeTime: '17.00',
    imageAsset: 'assets/images/73.jpg',
    price: 115000);

Field volgograd4 = Field(
    id: '074',
    name: 'Отель Hotel Friends',
    description: 'Ищешь, где переночевать между долгими прогулками по городу? Отель «Отель Hotel Friends» располагается в Волгограде. Этот отель находится неподалёку от центра города. Рядом с отелем — Выставочный центр Волгоград ЭКСПО, Волгоградский планетарий и Волгоградский Дворец спорта.',
    address: 'ул. Рокоссовского, д. 58, Волгоград',
    category: _volgograd,
    facilities: [_wifi, _toilet, _canteen],
    author: 'Ivan cortez',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0833 4444 5555',
    openDay: 'Все дни',
    openTime: '09.00',
    closeTime: '23.00',
    imageAsset: 'assets/images/74.jpg',
    price: 50000);

Field volgograd5 = Field(
    id: '075',
    name: 'Мини-Отель URoom',
    description: 'Меняем стандартную обстановку отеля на домашний уют! Мини-отель «Мини-Отель URoom» находится в Волгограде. Этот мини-отель располагается в пешей доступности от центра города. Рядом с мини-отелем можно прогуляться. Неподалёку: Волгоградский планетарий, Волгоградский государственный музей-панорама и Павловский дом.',
    address: 'улица Мира, д.21, Волгоград',
    category: _volgograd,
    facilities: [_toilet],
    author: 'Ilnur kalimullin',
    authorUrl: '',
    imageUrl: '',
    phoneNumber: '0888 9999 1111',
    openDay: 'Все дни',
    openTime: '06.00',
    closeTime: '18.00',
    imageAsset: 'assets/images/75.jpg',
    price: 75000);