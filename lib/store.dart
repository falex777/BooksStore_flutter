class BookItem {
  final int code;
  final String title;
  final String author;
  final double price;
  final String img;
  final bool isFavorite;

  BookItem({
    required this.code,
    required this.title,
    required this.author,
    this.price = 0,
    this.img = '',
    this.isFavorite = false,
  });
}

List<BookItem> booksStore = [
  BookItem(code: 1, title: "1984", author: "Джордж Оруэлл", price: 800, img: '1.jpg', isFavorite: false),
  BookItem(code: 2, title: "Убить пересмешника", author: "Харпер Ли", price: 700, img: '2.jpg', isFavorite: false),
  BookItem(code: 3, title: "Гордость и предубеждение", author: "Джейн Остин", price: 600, img: '3.jpg', isFavorite: false),
  BookItem(code: 4, title: "Моби Дик", author: "Herman Melville", price: 750, img: '4.jpg', isFavorite: false),
  BookItem(code: 5, title: "Великий Гэтсби", author: "Фрэнсис Скотт Фицджеральд", price: 650, img: '2.jpg', isFavorite: false),
  BookItem(code: 6, title: "Преступление и наказание", author: "Фёдор Достоевский", price: 900, img: '1.jpg', isFavorite: false),
  BookItem(code: 7, title: "Анна Каренина", author: "Лев Толстой", price: 850, img: '4.jpg', isFavorite: false),
  BookItem(code: 8, title: "Сияние", author: "Стивен Кинг", price: 800, img: '3.jpg', isFavorite: false),
  BookItem(code: 9, title: "Три товарища", author: "Эрих Мария Ремарк", price: 700, img: '1.jpg', isFavorite: false),
  BookItem(code: 10, title: "451 градус по Фаренгейту", author: "Рэй Брэдбери", price: 600, img: '4.jpg', isFavorite: false),
  BookItem(code: 11, title: "Братья Карамазовы", author: "Фёдор Достоевский", price: 950, img: '2.jpg', isFavorite: false),
  BookItem(code: 12, title: "Маленький принц", author: "Антуан де Сент-Экзюпери", price: 500, img: '3.jpg', isFavorite: false),
  BookItem(code: 13, title: "Старик и море", author: "Эрнест Хемингуэй", price: 700, img: '1.jpg', isFavorite: false),
  BookItem(code: 14, title: "Война и мир", author: "Лев Толстой", price: 1200, img: '2.jpg', isFavorite: false),
  BookItem(code: 15, title: "Дон Кихот", author: "Мигель де Сервантес", price: 800, img: '4.jpg', isFavorite: false),
  BookItem(code: 16, title: "Собачье сердце", author: "Михаил Булгаков", price: 600, img: '3.jpg', isFavorite: false),
  BookItem(code: 17, title: "Над пропастью во ржи", author: "Джером Д. Сэлинджер", price: 700, img: '1.jpg', isFavorite: false),
  BookItem(code: 18, title: "Цветы для Элджернона", author: "Дэниел Киз", price: 650, img: '4.jpg', isFavorite: false),
  BookItem(code: 19, title: "Тень ветра", author: "Карлос Руис Сафон", price: 800, img: '2.jpg', isFavorite: false)
];