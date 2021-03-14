import 'package:get_motivated/createQuote.dart';

class Quotes {
  List<createQuote> quotes = [
    createQuote(
      quoteAuthor: 'Mahatma Gandhi',
      quoteText:
          'Learn as if you will live forever, live like you will die tomorrow.',
    ),
    createQuote(
        quoteAuthor: 'Mark Twain',
        quoteText:
            'Stay away from those people who try to disparage your ambitions. Small minds will always do that, but great minds will give you a feeling that you can become great too.'),
    createQuote(
      quoteAuthor: 'Henry David Thoreau',
      quoteText: 'Success usually comes to those who are too busy looking for it.'
    ),
    createQuote(
      quoteAuthor: 'Estée Lauder',
      quoteText: 'I never dreamed about success. I worked for it.'
    ),
    createQuote(
      quoteAuthor: 'Steve Jobs',
      quoteText: 'If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.'
    ),
    createQuote(
      quoteAuthor: 'Jim Rohn',
      quoteText: 'Either you run the day or the day runs you.',
    ),
    createQuote(
      quoteAuthor: 'Thomas Jefferson',
      quoteText: 'I’m a greater believer in luck, and I find the harder I work the more I have of it.'
    ),
    createQuote(
      quoteAuthor: 'Tony Robbins',
      quoteText: 'Setting goals is the first step in turning the invisible into the visible.'
    ),
    createQuote(
      quoteAuthor: 'David Brinkley',
      quoteText: 'A successful man is one who can lay a firm foundation with the bricks others have thrown at him.'
    ),
    createQuote(
      quoteAuthor: 'Mark Cuban',
      quoteText: 'The best way to predict the future is to invent it.'
    ),
    createQuote(
      quoteAuthor: 'Mark Cuban',
      quoteText: 'Work like there is someone working 24 hours a day to take it all away from you.',
    )
  ];

  int counter = 0;

  String showQuote() {
      return quotes[counter].quoteText + ' - ' + quotes[counter].quoteAuthor;
  }

  void nextQuote() {
    if (counter < quotes.length - 1){
      counter ++;
    } else {
      resetCounter();
    }
  }

  void previousQuote() {
    if (counter == 0){
      counter = quotes.length -1;
    } else {
      counter --;
    }
  }

  void resetCounter() {
    counter = 0;
  }
}
