void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 2,
    };

    print(gifts);
    print(nobleGases);

  var mhs1 = Map<String, String>();
    mhs1['Nama'] = 'Kamila';
    mhs1['NIM'] = '23541720175';

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Kamila';
  mhs2[2] = '23541720175';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(mhs1);
  print(mhs2);

}