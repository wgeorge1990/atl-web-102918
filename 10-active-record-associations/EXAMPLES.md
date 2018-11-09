# Relationship Examples

## 1-to-1

Family - House

```ruby
class Family
  has_one :house
end

## There should be a database table `families`
## It doesn't have a foreign key.

class House
  belongs_to :family
end

## There should be a database table `houses`
## It should have a foreign key called `family_id`
```

## 1-to-Many

Person - Pets

```
class Person
  has_many :pets
end

## There should be a database table `people`
## It doesn't have a foreign key.
```

```ruby
class Pet
  belongs_to :person
end


## There should be a database table `pets`.
## That should have a foreign key called `person_id`.
```

## Many-to-Many

Post - PostTag - Tag

```ruby
class Post
  has_many :post_tags
  has_many :tags, through: :post_tags
end

## There should be a `posts` table.
## There should be a `post_tags` table.
## There should be a `tags` table.
## The post_tags table should have a
## foreign keys to a post and a tag.
```

```ruby
class PostTag
  belongs_to :post
  belongs_to :tag
end

## There should be a database table `post_tags`
## There should be `post_id` and `tag_id` columns in the `post_tags` table.
```

```ruby
class Tag
  has_many :post_tags
  has_many :posts, through: :post_tags
end

## There should be a `tags` table.
## There should be a `post_tags` table.
## There should be a `posts` table.
## The post_tags table should have a
## foreign keys to a post and a tag.
```
