# Jungle

The main object was to add features, fixing bugs, and adding automated tests on an existing project.

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Screenshots

### Main Page
![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/main_page.png)

### Admin Dashboard
 ![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/admin_dashboard.png)

### Adding new category
![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/admin_categories.png)

### Adding a new product
![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/admin_products.png)

![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/add_product.png)

### Login & Sign-Up page

![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/login.png)

![image](https://github.com/codertyler/jungle-rails/blob/master/public/screenshots/sign_up.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
