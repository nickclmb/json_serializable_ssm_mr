// GENERATED CODE - DO NOT MODIFY BY HAND

part of json_serializable.example;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => new Person(
    json['firstName'] as String,
    json['lastName'] as String,
    DateTime.parse(json['date-of-birth'] as String),
    middleName: json['middleName'] as String,
    lastOrder: json['last-order'] == null
        ? null
        : DateTime.parse(json['last-order'] as String),
    orders: (json['orders'] as List)
        .map((e) => new Order.fromJson(e as Map<String, dynamic>))
        .toList())
  ..relatedPeople = json['related-people'] == null
      ? null
      : new Map<String, Person>.fromIterables(
          (json['related-people'] as Map<String, dynamic>).keys,
          (json['related-people'] as Map).values.map((e) => e == null
              ? null
              : new Person.fromJson(e as Map<String, dynamic>)));

abstract class _$PersonSerializerMixin {
  String get firstName;
  String get middleName;
  String get lastName;
  DateTime get dateOfBirth;
  DateTime get lastOrder;
  List<Order> get orders;
  Map<String, Person> get relatedPeople;
  Map<String, dynamic> toJson() => new _PersonJsonMapWrapper(this);
}

abstract class _JsonMapWrapper extends MapBase<String, dynamic> {
  @override
  void operator []=(String key, dynamic value) =>
      throw new UnsupportedError('nope!');

  @override
  void clear() => throw new UnsupportedError('nope!');

  @override
  dynamic remove(Object key) => throw new UnsupportedError('nope!');
}

class _PersonJsonMapWrapper extends _JsonMapWrapper {
  final _$PersonSerializerMixin _person;

  _PersonJsonMapWrapper(this._person);

  @override
  dynamic operator [](Object key) {
    switch (key as String) {
      case 'firstName':
        return _person.firstName;
      case 'date-of-birth':
        return _person.dateOfBirth?.toIso8601String();
      case 'orders':
        return _person.orders;
      case 'middleName':
        return _person.middleName;
      case 'last-order':
        return _person.lastOrder?.toIso8601String();
      case 'lastName':
        return _person.lastName;
      case 'related-people':
        return _person.relatedPeople;
    }
    return null;
  }

  @override
  Iterable<String> get keys => const [
        'firstName',
        'middleName',
        'lastName',
        'date-of-birth',
        'last-order',
        'orders',
        'related-people'
      ];
}

Order _$OrderFromJson(Map<String, dynamic> json) => new Order()
  ..count = json['count'] as int
  ..itemNumber = json['itemNumber'] as int
  ..isRushed = json['isRushed'] as bool
  ..item = json['item'] == null
      ? null
      : new Item.fromJson(json['item'] as Map<String, dynamic>);

abstract class _$OrderSerializerMixin {
  int get count;
  int get itemNumber;
  bool get isRushed;
  Item get item;
  Map<String, dynamic> toJson()  => new _OrderJsonMapWrapper(this);

  /*{
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('count', count);
    writeNotNull('itemNumber', itemNumber);
    writeNotNull('isRushed', isRushed);
    writeNotNull('item', item);
    return val;
  }*/
}


class _OrderJsonMapWrapper extends _JsonMapWrapper {
  final _$OrderSerializerMixin order;

  _OrderJsonMapWrapper(this.order);

  @override
  dynamic operator [](Object key) {
    switch (key as String) {
      case 'count':
          return order.count;
      case 'itemNumber':
        return order.itemNumber;
      case 'isRushed':
        return order.isRushed;
        // ignoring item

    }
    return null;
  }

  @override
  Iterable<String> get keys => const [
    'count',
    'itemNumber',
    'isRushed'
    // skipping for demo - 'item'
  ];
}

Item _$ItemFromJson(Map<String, dynamic> json) => new Item()
  ..count = json['count'] as int
  ..itemNumber = json['itemNumber'] as int
  ..isRushed = json['isRushed'] as bool;

// **************************************************************************
// Generator: JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'glossary': {
    'title': 'example glossary',
    'GlossDiv': {
      'title': 'S',
      'GlossList': {
        'GlossEntry': {
          'ID': 'SGML',
          'SortAs': 'SGML',
          'GlossTerm': 'Standard Generalized Markup Language',
          'Acronym': 'SGML',
          'Abbrev': 'ISO 8879:1986',
          'GlossDef': {
            'para':
                'A meta-markup language, used to create markup languages such as DocBook.',
            'GlossSeeAlso': ['GML', 'XML']
          },
          'GlossSee': 'markup'
        }
      }
    }
  }
};
