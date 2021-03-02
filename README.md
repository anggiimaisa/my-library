# My Library

Requirement for running the program:
```
gem install rspec
gem install simplecov
```

Command that is recognized by the program:

```
build_library|2|1|3
put_book|9780747532743|Harry Potter 1|J. K. Rowling
put_book|9780807281918|Harry Potter 2|J. K. Rowling
put_book|9780739330944|Eragon 1|Christopher Paolini
put_book|9780545582933|Harry Potter 3|J. K. Rowling
put_book|9780132350884|Clean Code|Robert Cecil Martin
put_book|9780201485677|Refactoring|Martin Fowler, Kent Beck
take_book_from|020102
take_book_from|010102
put_book|9780132350884|Clean Code|Robert Cecil Martin
put_book|9780807281918|Harry Potter 2|J. K. Rowling
put_book|9780321146533|TDD: By Example|Kent Beck
take_book_from|999999
find_book|9780807281918
find_book|000
list_books
search_books_by_title|Harry Potter
search_books_by_author|Kent Beck
search_books_by_author|Tolkien
exit
```
