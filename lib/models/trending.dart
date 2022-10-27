class Trending {
  String image;
  String title;


  Trending(
      {required this.image,
      required this.title,
      });
}

var trendingList = [
  Trending(
      image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60',
      title: 'Salad',
      ),
  Trending(
      image: 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60',
      title: 'Cheese Cake',
      
      ),
  Trending(
      image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hlZXNlJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      title: 'Cheese Burger',
      ),
];
