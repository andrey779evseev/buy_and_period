import 'package:buy_and_period/layers/presentation/shared/widgets/select_field.dart';

class Ad {
  final String? image;
  final String title;
  final bool isLiked;
  final String description;
  final String price;
  final String location;
  final DateTime postedAt;
  final bool isOwner;
  final User author;

  Ad({
    required this.image,
    required this.title,
    required this.isLiked,
    required this.description,
    required this.price,
    required this.location,
    required this.postedAt,
    required this.isOwner,
    required this.author,
  });
}

class User {
  final String name;
  final String email;
  final String phone;
  final DateTime joinedAt;
  final String avatar;

  User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.joinedAt,
      required this.avatar});
}

enum Location implements OptionType {
  Tiraspol(label: 'Тирасполь'),
  Bendery(label: 'Бендеры'),
  Grigoriopol(label: 'Григориополь'),
  Dubossary(label: 'Дубоссары'),
  Kamenka(label: 'Каменка'),
  Rybnitsa(label: 'Рыбница'),
  Slobodzeya(label: 'Слободзея'),
  Dnestrovsk(label: 'Днестровск');

  final String label;

  const Location({required this.label});
}

enum Price implements OptionType {
  rub('руб.'),
  rubPerHour('руб./час'),
  rubPerMonth('руб./месяц'),
  rubPerYear('руб./год'),
  rubOnce('руб./разово');

  final String label;

  const Price(this.label);
}

const image =
    'https://images.unsplash.com/photo-1614788744301-4e5fb9d44e34?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

final ads = [
  Ad(
      image: image,
      title: 'Продажа велосипеда',
      isLiked: false,
      description:
          'Почти новый горный велосипед, бренд XYZ, 2023 года выпуска. Использовался всего несколько раз. Отличное состояние, все компоненты работают идеально. Продается в связи с переездом в другой город.',
      price: '1200 руб.',
      location: 'Тирасполь',
      postedAt: DateTime.now().subtract(const Duration(hours: 5, minutes: 20)),
      isOwner: true,
      author: user),
  Ad(
      image: null,
      title: 'Уроки игры на гитаре',
      isLiked: true,
      description:
          'Опытный преподаватель, окончивший музыкальное училище с отличием, предлагает индивидуальные уроки игры на гитаре для начинающих и продолжающих всех возрастов. Широкий спектр музыкальных стилей, от классики до современных хитов. Подход индивидуален к каждому ученику, включая подготовку к музыкальным экзаменам и конкурсам.',
      price: '180 руб./ч',
      location: 'Тирасполь',
      postedAt: DateTime.now()
          .subtract(const Duration(days: 1, hours: 2, minutes: 44)),
      isOwner: false,
      author: user),
  Ad(
      image:
          'https://images.unsplash.com/photo-1558185348-fe8fa4cf631f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Профессиональный фотограф на ваше мероприятие',
      isLiked: false,
      description:
          'Профессиональный фотограф с более чем 10-летним опытом предлагает свои услуги для фотосъемки на свадьбах, корпоративах, днях рождения и других торжествах. Использую только профессиональное оборудование. Возможность проведения фотосессий как на природе, так и в студии. Быстрая обработка фотографий и предоставление в высоком разрешении.',
      price: '550 руб./ч',
      location: 'Тирасполь',
      postedAt: DateTime.now()
          .subtract(const Duration(days: 36, hours: 1, minutes: 2)),
      isOwner: false,
      author: user),
  Ad(
      image:
          'https://images.unsplash.com/photo-1595599512948-b9831e5fc11c?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Сдается квартира',
      isLiked: false,
      description:
          'Сдается уютная однокомнатная квартира в центре города на длительный срок. Квартира чистая, после недавнего ремонта, полностью меблирована современной мебелью. В квартире есть все необходимое для комфортного проживания: бытовая техника, интернет, кабельное ТВ. Развитая инфраструктура района: магазины, школы, общественный',
      price: '2850 руб.',
      location: 'Тирасполь',
      postedAt: DateTime.now()
          .subtract(const Duration(days: 64, hours: 9, minutes: 57)),
      isOwner: false,
      author: user)
];

final user = User(
    avatar: image,
    name: 'Евлампия Романова',
    email: 'e.romanova@mail.ru',
    phone: '+ 373 779 3 12 03',
    joinedAt: DateTime.now().subtract(const Duration(days: 120)));
