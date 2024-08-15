# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = [
  {
    title: "The Future of AI",
    content: "Artificial Intelligence (AI) is revolutionizing the tech industry",
    author: "Dr. JJ",
    category: "Technology",
    published_at: "2024-08-01"
  },
  {
    title: "Top 10 Programming Languages in 2024",
    content: "In this article, we explore the top 10 programming languages in 2024, including Python, JavaScript, and Rust...",
    author: "Jing Jing",
    category: "Technology",
    published_at: "2024-07-28"
  },
  {
    title: "The Rise of E-Commerce",
    content: "This article explores the rise of online shopping, its impact on traditional retail, and the future of e-commerce...",
    author: "Christopher Anderson",
    category: "Business",
    published_at: "2023-12-30"
  },
  {
    title: "Best Hiking Trails in the US",
    content: "The United States offers some of the most beautiful hiking trails in the world.",
    author: "Michael Thompson",
    category: "Travel",
    published_at: "2024-06-15"
  },
  {
    title: "Understanding Cryptocurrency",
    content: "This article covers the basics of cryptocurrency, how it works, and its potential impact on the global economy...",
    author: "Kevin Cao",
    category: "Finance",
    published_at: "2024-05-10"
  }
]

articles.each do |article|
  Article.create!(article)
end
