class Recipe {
  String image;
  String title;
  String desc;
  String bahanBahan;
  String rating;

  Recipe(
      {required this.image,
      required this.title,
      required this.desc,
      required this.bahanBahan,
      required this.rating});
}

var recipeList = [
  Recipe(
      image: 'https://www.tiktak.id/wp-content/uploads/2020/05/Resep-Ayam-Gulai-Satu-Lagi-Pilihan-Menu-Utama-Buka-Puasa-1.jpg',
      title: 'Ayam Gulai',
      desc:
          'Gulai adalah masakan Minang berbahan baku ayam atau daging atau ikan. Kemudian dimasak dengan aneka rempah dan santan kelapa segar.',
      bahanBahan:
          '1 ekor ayam \n300 ml santan murni \n700 ml santan instan \n1 lembar daun kunyit \n3 lembar daun jeruk'
          ' \n2 lembar daun salam \n1 buah asam kandis \n1 sdm garam \n1 sdm gula \n5 siung bawang putih \n12 siung bawang merah \n10 buah cabai merah keriting'
          ' \n5 buah cabai rawit \n4 butir kemiri \n1 sdt ketumbar \n2 ruas kunyit \n2 sdm minyak goreng',
      rating: '8.5'),
  Recipe(
      image: 'https://sweetrip.id/wp-content/uploads/2020/09/loveresep_119040855_109408720821751_5041407659259127406_n-1024x1024.jpg.webp',
      title: 'Ayam Bakar',
      desc:
          'Ayam bakar adalah masakan Minang yang terbuat dari daging ayam yang dibakar. Ayam bakar biasanya dibuat dengan cara memasaknya dengan menggunakan bumbu bumbu yang berbeda-beda.',
      bahanBahan:
          '1 ekor ayam \n1 sdm minyak goreng \n1 sdm garam \n1 sdm gula \n1 sdm ketumbar \n1 sdm air \n1 sdm daun jeruk \n1 sdm daun salam \n1 sdm daun kunyit ',
      rating: '9.5'),
  Recipe(
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hlZXNlJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      title: 'Cheese Burger',
      desc:
          'Cheeseburger adalah hamburger dengan topping keju . Secara tradisional, irisan keju diletakkan di atas patty daging . Keju biasanya ditambahkan ke patty hamburger yang dimasak sesaat sebelum disajikan, yang memungkinkan keju meleleh. Burger keju dapat mencakup variasi dalam struktur, bahan, dan komposisi. Seperti hamburger lainnya, burger keju mungkin termasuk topping seperti selada , tomat , bawang , acar , bacon , mayones , saus tomat , dan mustard .',
      bahanBahan:
          'Roti Burger \n1 Saus Barbecue \n1 Mayonaisse \n1 Saus Tomat \n1 Saus Cabe \n1 Bawang Bombai \n1 Selada \n1 Tomat \n1 Keju Cheddar Lembaran',
      rating: '9.0'),
];
