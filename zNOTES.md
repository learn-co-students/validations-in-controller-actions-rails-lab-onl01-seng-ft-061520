
RUN the special ENV migration
RUN rails db:seed

CHECK for all available routes
     localhost:3000/rails/info/routes


FINAL 2 ERRORS
     1) PostsController making valid updates redirects to show page
     Failure/Error: expect(response).to redirect_to(post_path(@article))
       Expected response to be a <3XX: redirect>, but was a <200: OK>
     # ./spec/controllers/posts_controller_spec.rb:40:in `block (3 levels) in <top (required)>'

     2) PostsController making invalid updates has an error for invalid category
     Failure/Error: expect(article_bad.errors[:category]).to_not be_empty
       expected `[].empty?` to return false, got true
     # ./spec/controllers/posts_controller_spec.rb:66:in `block (3 levels) in <top (required)>'

----------------------

      1) PostsController making invalid updates has an error for invalid category
     Failure/Error: expect(article_bad.errors[:category]).to_not be_empty
       expected `[].empty?` to return false, got true
     # ./spec/controllers/posts_controller_spec.rb:66:in `block (3 levels) in <top (required)>'

     2) PostsController making invalid updates controller actions renders the form again
     Failure/Error: expect(response).to render_template(:edit)
       expecting <"edit"> but was a redirect to <http://test.host/posts/1>
     # ./spec/controllers/posts_controller_spec.rb:77:in `block (4 levels) in <top (required)>'



