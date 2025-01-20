 class Resep {
  String name, harga,tutorial,image;

  Resep(
    {
        required this.name,
        required this.harga,
        required this.tutorial,
        required this.image,
    });

List<Resep> dataResep = [
   Resep (
      name: 'Kebab Murah dan Hemat',
      harga: 'Rp.75.000',
      tutorial: 'Jajanan kebab murah sehat dan bergizi silahkan Or Now !!',
      image: 'assets/image1.jpg',
    ),
];
}