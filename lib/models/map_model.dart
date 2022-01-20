import 'dart:math' as math;
import 'package:flutter/material.dart';

class MapModel {
  MapModel(this.state, this.stateCode, this.color);
  String state;
  String stateCode;
  Color color;

  static List<MapModel> _getMapData() {
    return <MapModel>[
      MapModel(
          'Alabama',
          'AL',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Alaska',
          'AK',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Arizona',
          'AZ',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Arkansas',
          'AR',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'California',
          'CA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Colorado',
          'CO',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Connecticut',
          'CT',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Delaware',
          'DE',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'District of Columbia',
          'DC',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Florida',
          'FL',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Georgia',
          'GA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Hawaii',
          'HI',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Idaho',
          'ID',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Illinois',
          'IL',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Indiana',
          'IN',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Iowa',
          'IA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Kansas',
          'KS',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Kentucky',
          'KY',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Louisiana',
          'LA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Maine',
          'ME',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Maryland',
          'MD',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Massachusetts',
          'MA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Michigan',
          'MI',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Minnesota',
          'MN',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Mississippi',
          'MS',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Missouri',
          'MO',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Montana',
          'MT',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Nebraska',
          'NE',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Nevada',
          'MV',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'New Hampshire',
          'NH',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'New Jersey',
          'NJ',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'New Mexico',
          'NM',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'New York',
          'NY',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'North Carolina',
          'NC',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'North Dakota',
          'ND',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Ohio',
          'OH',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Oklahoma',
          'OK',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Oregon',
          'OR',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Pennsylvania',
          'PA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Rhode Island',
          'RI',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'South Carolina',
          'SC',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'South Dakota',
          'SD',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Tennessee',
          'TN',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Texas',
          'TX',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Utah',
          'UT',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Vermont',
          'VT',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Virginia',
          'VA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Washington',
          'WA',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'West Virginia',
          'WV',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Wisconsin',
          'WI',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Wyoming',
          'WY',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      MapModel(
          'Puerto Rico',
          'PR',
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
    ];
  }
}
