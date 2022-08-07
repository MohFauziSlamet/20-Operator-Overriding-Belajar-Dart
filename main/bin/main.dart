void main(List<String> arguments) {
  print('Hello world: !');
  print('Melakukan operator overriding');
  print('\n');

  print('Melakukan penjumlahan dengan operator plus');
  int a = 10;
  int b = 10;
  print("nilai a = $a + nilai b = $b = hasilnya adalah " + (a + b).toString());
  print('\n');

  print('Melakukan concatenation dengan operator plus');
  String c = 'Barochatul ';
  String d = 'Mauludy';
  print('Isi string c = $c + isi string d = $d hasilnya adalah ' + (c + d));
  print('\n');

  print('jika nilai yang dijumlahkan berupa int\n'
      'maka nilai tersbut akan dijumlahkan, \n'
      'namun jika nilai yang dijumlahkan berupa string, \n'
      'maka nilai terebut akan digabungkan menjadi kalimat baru');
  print('\n');
  print('----------------------------------------------------------');
  print('\n');

  Hero aa = const Hero(10);
  Hero bb = const Hero(10);
  print('menambhakan hero dengan hero ');
  print('Nilai hero aa = ' +
      aa.power.toString() +
      ' Nilai hero bb = ' +
      bb.power.toString() +
      ' Menghasilkan hero baru dengan nilai power = ' +
      ((aa + bb).power).toString());
  print('\n');

  print('menambhakan hero dengan bilangan int lainnya');
  print('Nilai hero aa = ' +
      aa.power.toString() +
      ' Menambhkan dengan nilai int = 20 ' +
      ' Hasilnya adalah  = ' +
      (aa.power + 20).toString());
  print('\n');

  print('membandingkan kedua objek hero dengan hero ');
  print('Nilai hero aa = ' +
      aa.power.toString() +
      ' Nilai hero bb = ' +
      bb.power.toString() +
      ' Apakah hero aa dan hero bb sama = ' +
      (aa == bb).toString());
  print('\n');

  print('\n');
  print('----------------------------------------------------------');
  Hero ee = Hero(20);
  Hero ff = Hero(10);
  print('Nilai hero ee = ' +
      ee.power.toString() +
      ' Nilai hero ff = ' +
      ff.power.toString() +
      ' Apakah hero ee dan hero ff sama = ' +
      (ee == ff).toString());
  print('\n');

  print('----------------------------------------------------------');
  Hero gg = Hero(20);
  Hero hh = Hero(10);
  print('Nilai hero gg = ' +
      gg.power.toString() +
      ' Nilai hero hh = ' +
      hh.power.toString() +
      ' Apakah hero gg kurang dari hero hh = ' +
      (gg < hh).toString());
  print('\n');

  print('----------------------------------------------------------');
  Hero ii = Hero(20);
  Hero jj = Hero(10);
  print('Nilai hero ii = ' +
      ii.power.toString() +
      ' Nilai hero jj = ' +
      jj.power.toString() +
      ' Apakah hero ii lebih dari hero jj = ' +
      (ii > jj).toString());
  print('\n');
}

class Hero {
  final int power;

  // menambahkan methode const didepan constructor , agar objeknya bisa b\dibuat constan
  const Hero(this.power);

  // methode dibawah hasilnya hanya menambahkan hero dengan hero saja
  // Hero operator +(Hero Other) {
  //   return Hero(power + Other.power);
  // }

  //kita bisa menambahkan hero power dengan bilangan int
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  // kita bisa merubah operator == dengan cara melakukan overide, agar yang dibandingkan itu hero powernya
  // bukan objeknya
  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator <(var other) {
    if (other is Hero) {
      if (power < other.power) {
        return true;
      }
    }
    return false;
  }
}
