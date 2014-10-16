# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {
    name:     "User 1",
    password_digest: "password",
  },
  {
    name:     "User 2",
    password_digest: "password",
  },
  {
    name:     "User 3",
    password_digest: "password",
  },
  {
    name:     "User 4",
    password_digest: "password",
  },
  {
    name:     "User 5",
    password_digest: "password"
  }
])

Page.create([
  {
    theme: "Light"
  },
  {
    theme: "Dark"
  },
  {
    theme: "Light"
  },
  {
    theme: "Dark"
  },
  {
    theme: "Light"
  },
  {
    theme: "Dark"
  }
])

Userpages.create([
  {
    user_id: 1,
    page_id: 1,
    role:    "admin"
  },
  {
    user_id: 2,
    page_id: 2,
    role:    "admin"
  },
  {
    user_id: 3,
    page_id: 3,
    role:    "admin"
  },
  {
    user_id: 3,
    page_id: 1,
    role:    "user"
  },
  {
    user_id: 4,
    page_id: 4,
    role:    "admin"
  },
  {
    user_id: 4,
    page_id: 5,
    role:    "admin"
  },
  {
    user_id: 1,
    page_id: 4,
    role:    "user"
  },
  {
    user_id: 1,
    page_id: 5,
    role:    "user"
  },
  {
    user_id: 5,
    page_id: 6,
    role:    "admin"
  }
])

Post.create([
  {
    user_id: 1,
    page_id: 1,
    title:   "Post Title 1",
    content: "Post Content 1"
  },
  {
    user_id: 1,
    page_id: 4,
    title:   "Post Title 2",
    content: "Post Content 2"
  },
  {
    user_id: 2,
    page_id: 2,
    title:   "Post Title 3",
    content: "Post Content 3"
  },
  {
    user_id: 2,
    page_id: 2,
    title:   "Post Title 4",
    content: "Post Content 4"
  },
  {
    user_id: 2,
    page_id: 2,
    title:   "Post Title 5",
    content: "Post Content 5"
  },
  {
    user_id: 1,
    page_id: 4,
    title:   "Post Title 6",
    content: "Post Content 6"
  },
  {
    user_id: 3,
    page_id: 1,
    title:   "Post Title 7",
    content: "Post Content 7"
  },
  {
    user_id: 3,
    page_id: 3,
    title:   "Post Title 8",
    content: "Post Content 8"
  },
  {
    user_id: 4,
    page_id: 1,
    title:   "Post Title 9",
    content: "Post Content 9"
  },
  {
    user_id: 4,
    page_id: 4,
    title:   "Post Title 10",
    content: "Post Content 10"
  },
  {
    user_id: 4,
    page_id: 5,
    title:   "Post Title 11",
    content: "Post Content 11"
  },
  {
    user_id: 4,
    page_id: 5,
    title:   "Post Title 12",
    content: "Post Content 12"
  },
  {
    user_id: 5,
    page_id: 6,
    title:   "Post Title 13",
    content: "Post Content 13"
  },
  {
    user_id: 4,
    page_id: 1,
    title:   "Post Title 14",
    content: "Post Content 14"
  },
  {
    user_id: 1,
    page_id: 1,
    title:   "Post Title 15",
    content: "Post Content 15"
  },
  {
    user_id: 4,
    page_id: 4,
    title:   "Post Title 16",
    content: "Post Content 16"
  }
])

Comment.create([
  {
    user_id: 1,
    post_id: 3,
    content: "Comment 1"
  },
  {
    user_id: 2,
    post_id: 2,
    content: "Comment 2"
  },
  {
    user_id: 1,
    post_id: 7,
    content: "Comment 3"
  },
  {
    user_id: 3,
    post_id: 7,
    content: "Comment 4"
  },
  {
    user_id: 4,
    post_id: 3,
    content: "Comment 5"
  },
  {
    user_id: 2,
    post_id: 11,
    content: "Comment 6"
  },
  {
    user_id: 2,
    post_id: 5,
    content: "Comment 7"
  },
  {
    user_id: 1,
    post_id: 3,
    content: "Comment 8"
  },
  {
    user_id: 4,
    post_id: 1,
    content: "Comment 9"
  },
  {
    user_id: 3,
    post_id: 15,
    content: "Comment 10"
  },
  {
    user_id: 5,
    post_id: 5,
    content: "Comment 11"
  },
  {
    user_id: 4,
    post_id: 16,
    content: "Comment 12"
  },
  {
    user_id: 1,
    post_id: 15,
    content: "Comment 13"
  },
  {
    user_id: 4,
    post_id: 13,
    content: "Comment 14"
  },
  {
    user_id: 1,
    post_id: 16,
    content: "Comment 15"
  },
  {
    user_id: 5,
    post_id: 9,
    content: "Comment 16"
  },
  {
    user_id: 1,
    post_id: 7,
    content: "Comment 17"
  },
  {
    user_id: 3,
    post_id: 9,
    content: "Comment 18"
  },
  {
    user_id: 2,
    post_id: 8,
    content: "Comment 19"
  },
  {
    user_id: 2,
    post_id: 6,
    content: "Comment 20"
  },
  {
    user_id: 4,
    post_id: 1,
    content: "Comment 21"
  },
  {
    user_id: 1,
    post_id: 13,
    content: "Comment 22"
  },
  {
    user_id: 2,
    post_id: 3,
    content: "Comment 23"
  },
  {
    user_id: 4,
    post_id: 1,
    content: "Comment 24"
  }
])