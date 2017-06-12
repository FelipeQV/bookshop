Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

Team Awesome-O
Luis
Felipe
Alberto
Jennyfer

Code:
transaction = Transaction.new

transaction.book = Book.find(54)
transaction.user = User.find(54)
transaction.buyer = User.find(55) == transaction.buyer_user_id = 55

transaction.save
