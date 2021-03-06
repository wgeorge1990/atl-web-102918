require_relative '../config/environment'
require 'pry'

tag1 = Tag.new(name: 'poetry')
tag2 = Tag.new(name: 'milosz')
post1 = Post.new(title: 'Eyes',
                 date: DateTime.now,
                 format: 'md',
                 content:
                   "My most honorable eyes, you are not in the best of shape.
                    I receive from you an image that is less than sharp,
                    And if a color, then it's dimmed.
                    And you were a pack of royal greyhounds once,
                    With whom I would set out early mornings.
                    My wondrous quick eyes, you saw many things,
                    Lands and cities, islands and oceans.
                    Together we greeted immense sunrises
                    When the fresh air set us running on trails
                    Where the dew had just begun to dry.
                    Now what you have seen is hidden inside me
                    And changed into memories or dreams.
                    I am slowly moving away from the fairgrounds of the world
                    And I notice in myself a distaste
                    For the monkeyish dress, the screams and the drumbeats.
                    What a relief. To be alone with my meditation
                    On the basic similarity in humans
                    And their tiny grain of dissimilarity.
                    Without eyes, my gaze is fixed on one bright point,
                    That grows large and takes me in.")
post_tag1 = PostTag.new(post: post1, tag: tag1)
post_tag2 = PostTag.new(post: post1, tag: tag2)

binding.pry
