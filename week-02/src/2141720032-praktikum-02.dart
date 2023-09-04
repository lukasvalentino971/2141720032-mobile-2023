void main() {
  for (int i = 18; i >= 9; i--) {
    String formattedAge = i < 10 ? '0$i' : '$i';
    print('Nama saya adalah Fulan, sekarang berumur $formattedAge');
  }
}
