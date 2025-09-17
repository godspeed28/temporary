String nim = '', nama = '', nHuruf = '', predikat = '';
double nilaiUts = 0, nilaiTugas = 0, nilaiUas = 0, pNilaiUts = 0, pNilaiUas = 0, pNilaiTugas = 0, nilaiAkhir = 0;
void main(){
  nim = 'A11.2023.15193';
  nama = 'Albert Kolin';
  nilaiTugas = 85;
  nilaiUts = 80;
  nilaiUas = 95;
  hitungNilai();
  cetakNilai();
}

void hitungNilai(){
  pNilaiUts = 0.35 * nilaiUts;
  pNilaiUas = 0.35 * nilaiUas;
  pNilaiTugas = 0.30 * nilaiTugas;
  nilaiAkhir = pNilaiTugas + pNilaiUas + pNilaiUts;
}

void cetakNilai(){
  print('NIM : $nim');
  print('Nama : $nama');
  print('Nilai Tugas : $nilaiTugas');
  print('Nilai UAS : $nilaiUas');
  print('Nilai UTS : $nilaiUts');
  print('Nilai Akhir : $nilaiAkhir');
  print('Grade : ' + getNilaiHuruf(nilaiAkhir));
  print('Predikat : ' + getPredikat(nHuruf));
}

String getNilaiHuruf(double na){
  if(na >= 85){
    nHuruf = 'A';
  }else if(na >= 80){
    nHuruf = 'AB';
  }else if(na >= 70){
    nHuruf = 'B';
  }else if(na >= 65){
    nHuruf = 'BC';
  }else if(na >= 60){
    nHuruf = 'C';
  }else if(na >= 50){
    nHuruf = 'D';
  }else{
    nHuruf = 'E';
  }
  return nHuruf;

}

String getPredikat(String nh){
  switch(nh){
    case 'A':
    predikat = 'Apik'; 
    break;
    case 'AB':
    predikat = 'Apik Baik'; 
    case 'B':
    predikat = 'Baik'; 
    case 'BC':
    predikat = 'Cukup Baik'; 
    case 'C':
    predikat = 'Cukup'; 
    case 'D':
    predikat = 'Dableg'; 
    case 'E':
    predikat = 'Eleg'; 

  }
  return predikat;

}

