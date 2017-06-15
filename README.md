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



<div class="card" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2)), url('<%= cl_image_path picture, height: 500, width: 500, crop: :fit %>')">

  <div class="card-category">Popular</div>
  <div class="card-description">
    <%=link_to book_path(book) do%>
    <h2 style = "color: white"><%=book.title%></h2>
    <p style = "color: white"><%=book.author%></p>
    <p style = "color: white">$<%=book.price%>.00</p>


    <%end%>
  </div>
</div>
