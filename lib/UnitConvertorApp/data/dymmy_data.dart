import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> JSON = [
  {
    'name': 'Basic',
    'icons': [
      {
        'name': 'Length',
        'icon': Icon(
          Icons.add_road_rounded,
          color: Colors.white70,
        )
      },
      {
        'name': 'Area',
        'icon': Icon(
          Icons.apps_rounded,
          color: Colors.white70,
        )
      },
      {
        'name': 'Weight',
        'icon': Icon(
          Icons.balance_sharp,
          color: Colors.white70,
        )
      },
      {
        'name': 'Volume',
        'icon': Icon(
          Icons.qr_code,
          color: Colors.white70,
        )
      },
    ],
    'fields': [
      [
        {'name': 'm', 'value': 1},
        {'name': 'inch', 'value': 39.375},
        {'name': 'ft', 'value': 3.28084},
        {'name': 'yd', 'value': 1.093613},
        {'name': 'dm', 'value': 10},
        {'name': 'cm', 'value': 100},
        {'name': 'mm', 'value': 1000},
        {'name': 'um', 'value': 1000000},
        {'name': 'km', 'value': 0.001},
        {'name': 'mile', 'value': 0.000621}
      ],
      [
        {'name': 'mm^2', 'value': 1},
        {'name': 'cm^2', 'value': 0.01},
        {'name': 'dm^2', 'value': 0.0001},
        {'name': 'm^2', 'value': 0.000001},
        {'name': 'in^2', 'value': 0.00155},
        {'name': 'ft^2', 'value': 0.000011},
        {'name': 'yd^2', 'value': 0.000001},
        {'name': 'ha', 'value': 0.0000000001},
        {'name': 'km^2', 'value': 0.000000000001},
        {'name': 'a', 'value': 0.00000001},
        {'name': 'acre', 'value': 0.00000000024711},
        {'name': 'mile^2', 'value': 0.0000000000003861},
        {'name': 'dunam', 'value': 0.000000001}
      ],
      [
        {'name': 'mg', 'value': 1},
        {'name': 'ug', 'value': 1000},
        {'name': 'g', 'value': 0.001},
        {'name': 'kg', 'value': 0.000001},
        {'name': 'lb', 'value': 0.000002},
        {'name': 'oz', 'value': 0.000035},
        {'name': 'oz t', 'value': 0.000032},
        {'name': 'grain', 'value': 0.015432},
        {'name': 'tonne', 'value': 0.000000001},
        {'name': 'ton(UK)', 'value': 0.00000000098421},
        {'name': 'ton(US)', 'value': 0.0000000011023},
        {'name': 'stone(UK)', 'value': 0.0000001574},
        {'name': 'cwt', 'value': 0.000000019684},
        {'name': 'carat', 'value': 0.005}
      ],
      [
        {'name': 'ml', 'value': 1},
        {'name': 'cl', 'value': 0.1},
        {'name': 'L(Litre)', 'value': 0.001},
        {'name': 'mm^3', 'value': 1000},
        {'name': 'cm^3', 'value': 1},
        {'name': 'dm^3', 'value': 0.001},
        {'name': 'm^3', 'value': 0.000001},
        {'name': 'in^3', 'value': 0.061024},
        {'name': 'ft^3', 'value': 0.000035},
        {'name': 'yd^3', 'value': 0.000001},
        {'name': 'gal(UK)', 'value': 0.00022},
        {'name': 'gal(US)', 'value': 0.000264},
        {'name': 'bbl', 'value': 0.000006},
        {'name': 'pt(UK)', 'value': 0.00176},
        {'name': 'pt(US)', 'value': 0.002113},
        {'name': 'fl oz (US)', 'value': 0.033814},
      ]
    ]
  },
  {
    'name': 'Living',
    'icons': [
      {
        'name': 'Currency',
        'icon': Icon(
          Icons.monetization_on_outlined,
          color: Colors.white70,
        )
      },
      {
        'name': 'Temperature',
        'icon': Icon(
          Icons.thermostat,
          color: Colors.white70,
        )
      },
      {
        'name': 'Time',
        'icon': Icon(
          Icons.watch_later_outlined,
          color: Colors.white70,
        )
      },
      {
        'name': 'Speed',
        'icon': Icon(
          Icons.speed,
          color: Colors.white70,
        )
      },
    ],
    'fields': [
      [
        {'name': 'ILS', 'value': 1},
        {'name': 'USD', 'value': 0.28},
        {'name': 'EUR', 'value': 0.29},
        {'name': 'JPY', 'value': 41.96},
        {'name': 'GBP', 'value': 0.25},
        {'name': 'CHF', 'value': 0.28},
        {'name': 'AUD', 'value': 0.46},
        {'name': 'CAD', 'value': 0.39},
      ],
      [
        {'name': 'C', 'value': 1},
        {'name': 'RE', 'value': 0.8},
      ],
      [
        {'name': 'sec', 'value': 1},
        {'name': 'ms', 'value': 1000},
        {'name': 'min', 'value': 0.016667},
        {'name': 'hour', 'value': 0.000278},
        {'name': 'day', 'value': 0.000012},
        {'name': 'week', 'value': 0.000002},
        {'name': 'month', 'value': 0.00000038052},
        {'name': 'year', 'value': 0.00000003171},
      ],
      [
        {'name': 'm/s', 'value': 1},
        {'name': 'ft/s', 'value': 3.28084},
        {'name': 'km/s', 'value': 0.001},
        {'name': 'm/min', 'value': 60},
        {'name': 'ft/min', 'value': 196.850394},
        {'name': 'km/min', 'value': 0.06},
        {'name': 'km/h', 'value': 3.6},
        {'name': 'mi/h (mph)', 'value': 2.236936},
        {'name': 'knot', 'value': 1.943844},
        {'name': 'mach', 'value': 0.002941},
        {'name': 'min/km', 'value': 16.66666667},
        {'name': 'min/mile', 'value': 26.8224},
      ]
    ]
  },
  {
    'name': 'Science',
    'icons': [
      {
        'name': 'Pressure',
        'icon': Icon(
          Icons.keyboard_double_arrow_down,
          color: Colors.white70,
        )
      },
      {
        'name': 'Force',
        'icon': Icon(
          Icons.rotate_90_degrees_cw_outlined,
          color: Colors.white70,
        )
      },
      {
        'name': 'Work',
        'icon': Icon(
          Icons.double_arrow,
          color: Colors.white70,
        )
      },
      {
        'name': 'Power',
        'icon': Icon(
          Icons.battery_charging_full_outlined,
          color: Colors.white70,
        )
      },
    ],
    'fields': [
      [
        {'name': 'atm', 'value': 1},
        {'name': 'pa', 'value': 101325},
        {'name': 'hPa (mbar)', 'value': 1013.25},
        {'name': 'kPa (kN/m^2)', 'value': 101.325},
        {'name': 'MPa', 'value': 0.101325},
        {'name': 'bar', 'value': 1.01325},
        {'name': 'psi (lbf/in^2)', 'value': 14.69595},
        {'name': 'ksi', 'value': 0.014696},
        {'name': 'kgf/cm^2', 'value': 1.033227},
        {'name': 'kgf/m^2', 'value': 10332.27},
        {'name': 'mmHg (Torr)', 'value': 760},
      ],
      [
        {'name': 'N', 'value': 1},
        {'name': 'dyn', 'value': 100000},
        {'name': 'daN', 'value': 0.1},
        {'name': 'KN', 'value': 0.001},
        {'name': 'kgf', 'value': 0.101972},
        {'name': 'lbf', 'value': 0.224809},
        {'name': 'kip', 'value': 0.000225},
      ],
      [
        {'name': 'KJ', 'value': 1},
        {'name': 'J', 'value': 1000},
        {'name': 'cal', 'value': 239.005736},
        {'name': 'kcal (Cal)', 'value': 0.239006},
        {'name': 'KW-h', 'value': 0.000278},
        {'name': 'kgf-m', 'value': 101.971621},
        {'name': 'in-lbf', 'value': 8850.74579},
        {'name': 'ft-lbf', 'value': 737.562149},
        {'name': 'BTU', 'value': 0.947817},
        {'name': 'toe', 'value': 0.000000023885},
      ],
      [
        {'name': 'kW', 'value': 1},
        {'name': 'W', 'value': 1000},
        {'name': 'MW', 'value': 0.001},
        {'name': 'kcal/s', 'value': 0.239006},
        {'name': 'HP', 'value': 1.341022},
        {'name': 'PS', 'value': 1.359619},
        {'name': 'BTU/h', 'value': 3412.14163},
        {'name': 'TR', 'value': 0.284535},
        {'name': 'BHP', 'value': 0.101931},
        {'name': 'dBm', 'value': 60},
      ]
    ]
  },
  {
    'name': 'MISC',
    'icons': [
      {
        'name': 'Angle',
        'icon': Icon(
          Icons.architecture,
          color: Colors.white70,
        )
      },
      {
        'name': 'Data',
        'icon': Icon(
          Icons.folder_outlined,
          color: Colors.white70,
        )
      },
      {
        'name': 'Fuel',
        'icon': Icon(
          Icons.local_gas_station_outlined,
          color: Colors.white70,
        )
      },
      {
        'name': 'Cooking',
        'icon': Icon(
          Icons.soup_kitchen_outlined,
          color: Colors.white70,
        )
      },
    ],
    'fields':[
      [
        {'name': 'deg', 'value': 1},
        {'name': 'rad', 'value': 0.017453},
        {'name': 'sec', 'value': 3600},
        {'name': 'min', 'value': 60},
        {'name': 'grad', 'value': 1.111111},
        {'name': '%', 'value': 1.745506},
        {'name': 'circle', 'value': 0.002778},
        {'name': '6400 mil', 'value': 17.7777777778},
        {'name': '6000 mil', 'value': 16.6666666667},
      ],
      [
        {'name': 'GB', 'value': 1},
        {'name': 'MB', 'value': 1024},
        {'name': 'kB', 'value': 1048576},
        {'name': 'Byte', 'value': 1073741824},
        {'name': 'bit', 'value': 8589934592},
        {'name': 'TB', 'value': 0.0009765625},
      ],
      [
        {'name': 'km/l', 'value': 1},
        {'name': 'mi/l', 'value': 0.621371},
        {'name': 'km/gal (US)', 'value': 3.785412},
        {'name': 'mi/gal (US)', 'value': 2.352146},
        {'name': 'mi/gal (UK)', 'value': 2.824811},
        {'name': 'l/100km', 'value': 100},
      ],
      [
        {'name': 'ml(cc)', 'value': 1},
        {'name': 'teaspoon', 'value': 0.202884},
        {'name': 'tablespoon', 'value': 0.067628},
        {'name': 'cup (US)', 'value': 0.004227},
        {'name': 'cup (UK)', 'value': 0.003521},
        {'name': 'cup (metric)', 'value': 0.004},
        {'name': 'fl oz (US)', 'value': 0.033814},
        {'name': 'fl oz (Uk)', 'value': 0.035195},
        {'name': 'pt (US)', 'value': 0.002113},
        {'name': 'pt (UK)', 'value': 0.00176},
        
      ]
    ]
  }
];

// Map<String, dynamic> Basic = {
//   'icons': [
//     {
//       'name': 'Length',
//       'icon': Icon(
//         Icons.add_road_rounded,
//         color: Colors.white70,
//       )
//     },
//     {
//       'name': 'Area',
//       'icon': Icon(
//         Icons.apps_rounded,
//         color: Colors.white70,
//       )
//     },
//     {
//       'name': 'Weight',
//       'icon': Icon(
//         Icons.balance_sharp,
//         color: Colors.white70,
//       )
//     },
//     {
//       'name': 'Volume',
//       'icon': Icon(
//         Icons.qr_code,
//         color: Colors.white70,
//       )
//     },
//   ],
//   'fields': [
//     [
//       {'name': 'm', 'value': 1},
//       {'name': 'inch', 'value': 39.375},
//       {'name': 'ft', 'value': 3.28084},
//       {'name': 'yd', 'value': 1.093613},
//       {'name': 'dm', 'value': 10},
//       {'name': 'cm', 'value': 100},
//       {'name': 'mm', 'value': 1000},
//       {'name': 'um', 'value': 1000000},
//       {'name': 'km', 'value': 0.001},
//       {'name': 'mile', 'value': 0.000621}
//     ],
//     [
//       {'name': 'mm^2', 'value': 1},
//       {'name': 'cm^2', 'value': 0.01},
//       {'name': 'dm^2', 'value': 0.0001},
//       {'name': 'm^2', 'value': 0.000001},
//       {'name': 'in^2', 'value': 0.00155},
//       {'name': 'ft^2', 'value': 0.000011},
//       {'name': 'yd^2', 'value': 0.000001},
//       {'name': 'ha', 'value': 0.0000000001},
//       {'name': 'km^2', 'value': 0.000000000001},
//       {'name': 'a', 'value': 0.00000001},
//       {'name': 'acre', 'value': 0.00000000024711},
//       {'name': 'mile^2', 'value': 0.0000000000003861},
//       {'name': 'dunam', 'value': 0.000000001}
//     ],
//     [
//       {'name': 'ug', 'value': 1000},
//       {'name': 'mg', 'value': 1},
//       {'name': 'g', 'value': 0.001},
//       {'name': 'kg', 'value': 0.000001},
//       {'name': 'lb', 'value': 0.000002},
//       {'name': 'oz', 'value': 0.000035},
//       {'name': 'oz t', 'value': 0.000032},
//       {'name': 'grain', 'value': 0.015432},
//       {'name': 'tonne', 'value': 0.000000001},
//       {'name': 'ton(UK)', 'value': 0.00000000098421},
//       {'name': 'ton(US)', 'value': 0.0000000011023},
//       {'name': 'stone(UK)', 'value': 0.0000001574},
//       {'name': 'cwt', 'value': 0.000000019684},
//       {'name': 'carat', 'value': 0.005}
//     ],
//     [
//       {'name': 'ml', 'value': 1},
//       {'name': 'cl', 'value': 0.1},
//       {'name': 'L(Litre)', 'value': 0.001},
//       {'name': 'mm^3', 'value': 1000},
//       {'name': 'cm^3', 'value': 1},
//       {'name': 'dm^3', 'value': 0.001},
//       {'name': 'm^3', 'value': 0.000001},
//       {'name': 'in^3', 'value': 0.061024},
//       {'name': 'ft^3', 'value': 0.000035},
//       {'name': 'yd^3', 'value': 0.000001},
//       {'name': 'gal(UK)', 'value': 0.00022},
//       {'name': 'gal(US)', 'value': 0.000264},
//       {'name': 'bbl', 'value': 0.000006},
//       {'name': 'pt(UK)', 'value': 0.00176},
//       {'name': 'pt(US)', 'value': 0.002113},
//       {'name': 'fl oz (US)', 'value': 0.033814},
//     ]
//   ]
// };
// List<List<Map<String, dynamic>>> asic = [
//   [
//     {
//       'name': 'Length',
//       'icon': Icon(
//         Icons.add_road_rounded,
//       )
//     },
//     {'name': 'Area', 'icon': Icon(Icons.apps_rounded)},
//     {'name': 'Weight', 'icon': Icon(Icons.balance_sharp)},
//     {'name': 'Volume', 'icon': Icon(Icons.qr_code)},
//   ],
//   [
//     {'name': 'm', 'value': 1},
//     {'name': 'inch', 'value': 39.375},
//     {'name': 'ft', 'value': 3.28084},
//     {'name': 'yd', 'value': 1.093613},
//     {'name': 'dm', 'value': 10},
//     {'name': 'cm', 'value': 100},
//     {'name': 'mm', 'value': 1000},
//     {'name': 'um', 'value': 1000000},
//     {'name': 'km', 'value': 0.001},
//     {'name': 'mile', 'value': 0.000621}
//   ]
// ];
// List<Map<String, dynamic>> lengthUnits = [
//   {'name': 'm', 'value': 1},
//   {'name': 'inch', 'value': 39.375},
//   {'name': 'ft', 'value': 3.28084},
//   {'name': 'yd', 'value': 1.093613},
//   {'name': 'dm', 'value': 10},
//   {'name': 'cm', 'value': 100},
//   {'name': 'mm', 'value': 1000},
//   {'name': 'um', 'value': 1000000},
//   {'name': 'km', 'value': 0.001},
//   {'name': 'mile', 'value': 0.000621}
// ];
// List<Map<String, dynamic>> areaUnits = [
//   {'name': 'mm^2', 'value': 1},
//   {'name': 'cm^2', 'value': 0.01},
//   {'name': 'dm^2', 'value': 0.0001},
//   {'name': 'm^2', 'value': 0.000001},
//   {'name': 'in^2', 'value': 0.00155},
//   {'name': 'ft^2', 'value': 0.000011},
//   {'name': 'yd^2', 'value': 0.000001},
//   {'name': 'ha', 'value': 0.0000000001},
//   {'name': 'km^2', 'value': 0.000000000001},
//   {'name': 'a', 'value': 0.00000001},
//   {'name': 'acre', 'value': 0.00000000024711},
//   {'name': 'mile^2', 'value': 0.0000000000003861},
//   {'name': 'dunam', 'value': 0.000000001}
// ];
// List<Map<String, dynamic>> weightUnit = [
//   {'name': 'ug', 'value': 1000},
//   {'name': 'mg', 'value': 1},
//   {'name': 'g', 'value': 0.001},
//   {'name': 'kg', 'value': 0.000001},
//   {'name': 'lb', 'value': 0.000002},
//   {'name': 'oz', 'value': 0.000035},
//   {'name': 'oz t', 'value': 0.000032},
//   {'name': 'grain', 'value': 0.015432},
//   {'name': 'tonne', 'value': 0.000000001},
//   {'name': 'ton(UK)', 'value': 0.00000000098421},
//   {'name': 'ton(US)', 'value': 0.0000000011023},
//   {'name': 'stone(UK)', 'value': 0.0000001574},
//   {'name': 'cwt', 'value': 0.000000019684},
//   {'name': 'carat', 'value': 0.005}
// ];
// List<Map<String, dynamic>> volumeUnits = [
//   {'name': 'ml', 'value': 1},
//   {'name': 'cl', 'value': 0.1},
//   {'name': 'L(Litre)', 'value': 0.001},
//   {'name': 'mm^3', 'value': 1000},
//   {'name': 'cm^3', 'value': 1},
//   {'name': 'dm^3', 'value': 0.001},
//   {'name': 'm^3', 'value': 0.000001},
//   {'name': 'in^3', 'value': 0.061024},
//   {'name': 'ft^3', 'value': 0.000035},
//   {'name': 'yd^3', 'value': 0.000001},
//   {'name': 'gal(UK)', 'value': 0.00022},
//   {'name': 'gal(US)', 'value': 0.000264},
//   {'name': 'bbl', 'value': 0.000006},
//   {'name': 'pt(UK)', 'value': 0.00176},
//   {'name': 'pt(US)', 'value': 0.002113},
//   {'name': 'fl oz (US)', 'value': 0.033814},
// ];
// List BasicData = [
//   {'name': 'Length','icon': Icon(Icons.add_road_rounded,)},
//   {'name': 'Area', 'icon': Icon(Icons.apps_rounded)},
//   {'name': 'Weight', 'icon': Icon(Icons.balance_sharp)},
//   {'name': 'Volume', 'icon': Icon(Icons.qr_code)},
// ];
