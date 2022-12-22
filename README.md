# Jungle

Having a tough time finding unique products that you can show off to your friends? Welcome to the Jungle. Where weird is the new normal. An e-commerce application built with Rails 6.1, using idiomatic Ruby and Rails practices. This app uses HTML, SCSS and JS on the front-end; Ruby on Rails and PostgreSQL on the back-end.

## Page Demos

!["Main page"](https://github.com/LIZXP/jungle-rails/blob/master/app/assets/project/1.JPG)
!["Product"](https://github.com/LIZXP/jungle-rails/blob/master/app/assets/project/2.JPG)
!["Shopping Cart"](https://github.com/LIZXP/jungle-rails/blob/master/app/assets/project/3.JPG)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server. The app will be served at http://localhost:3000

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Admin Privileges
Authenticated admins can add/edit/delete products and categories.

Product Selection
Users can browse and add products to cart directly from the home page.

Products can also be seen in their individual pages, or under their respective categories.

Checkout
Users can complete their purchase using Stripe, and see the details of their order.

---------------------------------------------------------------------------------------
