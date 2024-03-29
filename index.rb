# frozen_string_literal: true

require 'date'
require_relative 'bin/library'

# Creating of the Library instance
library = Library.new

# Creating of the Author instance with all parameters
john_doe = Author.new('John Doe', 'Noname author of noname books')

# Creating of the Author instance without biography
jane_doe = Author.new('Jane Doe')

# Adding authors to the library
library.add(john_doe)
library.add(jane_doe)

# Creating og the Book instance
johns_book = Book.new('How not to be unknown', john_doe)
janes_book = Book.new('How to be known', jane_doe)

# Adding books to the library
library.add(johns_book)
library.add(janes_book)

# Creating of the Reader instance
jack_roe = Reader.new(name: 'Jack Roe', email: 'jack_roe@gmail.com', city: 'Ottawa', street: 'Riverdale Ave', house: 12)
jill_roe = Reader.new(name: 'Jill Roe', email: 'jill_roe@gmail.com', city: 'Oslo', street: 'Heimdalsgata', house: 3)

# Adding readers to the library
library.add(jack_roe)
library.add(jill_roe)

# Creating of the Order instance with all parameters
jacks_order = Order.new(book: johns_book, reader: jack_roe, date: Date.today)

# Creating of the Order without date
jills_order = Order.new(book: janes_book, reader: jill_roe)

# Adding orders to the library
library.add(jacks_order)
library.add(jills_order)

# Calling statistics methods
puts '-----------------------------------------------------------------------------------------------------------------'
puts "Top readers\n\n"
library.top_readers.each { |reader| puts "#{reader}\n" }
puts '-----------------------------------------------------------------------------------------------------------------'
puts "Most popular books\n\n"
library.most_popular_books.each { |book| puts "#{book}\n" }
puts '-----------------------------------------------------------------------------------------------------------------'
puts "Number of readers of the most popular books: #{library.number_of_readers_of_the_most_popular_books}"
puts '-----------------------------------------------------------------------------------------------------------------'

# Saving library
library.save
