Good Morning!

> Today isn't about seeing _new_ things, it's about understanding the things we have.


## ActiveRecord FAQs

* Q: How do I find the activerecord method I need when I need it?

* A: The Rails Guides are okay, not perfect. More of a reference than a tutorial at times.
  * Basics guide, Associations guide, and Query Interface guide.
* A: StackOverflow can be great.

* Q: What sorts of ActiveRecord things should I ignore?

* A: Migrations are something we're covering Monday that let you change the database tables.
* A: Anything that uses the `rails` command.

* Q: Do activerecord associations change the table in some way?

* A: No, they only define methods to let us query the table.

## ActiveRecord Review

Wow, ActiveRecord is ... [so magical](https://camo.githubusercontent.com/4748206645ccf2806f1acb9b86512f05e2290c16/687474703a2f2f692e696d6775722e636f6d2f6f307664314a672e676966)

How does ActiveRecord do this _amazing stuff_?

Inheritance!

  * Let's look at `ancestors` and maybe `send`
  * We should also see pry's `ls` command.

Conventions:

  * Let's talk about the [naming convention][ar-naming]...
  
[ar-naming]: https://guides.rubyonrails.org/active_record_basics.html#naming-conventions

## ActiveRecord Associations

Associations are how ActiveRecord implements _relationships_.

We'll use the methods `has_many`, `has_one`, and `belongs_to`.

Much like `attr_reader`, `attr_accessor`, these ActiveRecord associations
*define methods for us* on our class.

Methods that define other methods for us are often called "macros".
