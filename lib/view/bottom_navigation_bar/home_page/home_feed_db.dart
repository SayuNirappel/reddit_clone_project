import 'package:reddit_clone_project/model/home_feed_model.dart';

class HomeFeedDb {
  static final List<HomeFeedModel> homeFeedList = [
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/31040991/pexels-photo-31040991/free-photo-of-pastry-chef-decorating-a-dessert-in-kitchen.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "TechGeek99",
      feedPostTime: "13m",
      feedPostViews: "1.2K",
      feedPostTitle: "Flutter vs React Native: Which One Should You Choose?",
      feedPostImage:
          "https://images.pexels.com/photos/27238455/pexels-photo-27238455/free-photo-of-chicago-photographer.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText:
          "A detailed comparison of Flutter and React Native in 2025...",
      feedPostUp: 120,
      feedPostDown: 8,
      feedPostComments: ["Great comparison!", "I prefer Flutter!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/31032703/pexels-photo-31032703/free-photo-of-elegant-woman-in-summer-dress-by-rocky-coast.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "CryptoGuru",
      feedPostTime: "19m",
      feedPostViews: "3.5K",
      feedPostTitle: "Bitcoin Hits \$70K: What’s Next?",
      feedPostImage:
          "https://images.pexels.com/photos/27372369/pexels-photo-27372369/free-photo-of-a-person-holding-a-butterfly-on-their-finger.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText: "The crypto market is booming. What are your thoughts?",
      feedPostUp: 900,
      feedPostDown: 45,
      feedPostComments: ["HODL!", "Time to sell?"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30489075/pexels-photo-30489075/free-photo-of-elegant-gentleman-enjoying-a-latte-in-slovakia.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "SpaceExplorer",
      feedPostTime: "2h",
      feedPostViews: "5K",
      feedPostTitle: "NASA Discovers a New Exoplanet!",
      feedPostImage:
          "https://images.pexels.com/photos/15275556/pexels-photo-15275556/free-photo-of-a-cat-near-a-fish-pond.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText: "Could this be a habitable world? Let's discuss.",
      feedPostUp: 1500,
      feedPostDown: 10,
      feedPostComments: ["Mind-blowing!", "We are not alone!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/31091777/pexels-photo-31091777/free-photo-of-cultural-portrait-of-a-woman-in-traditional-kimono.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "MovieBuff21",
      feedPostTime: "49m",
      feedPostViews: "2.2K",
      feedPostTitle: "Dune 2 Review: A Sci-Fi Masterpiece?",
      feedPostImage:
          "https://images.pexels.com/photos/31116877/pexels-photo-31116877/free-photo-of-vintage-yellow-scooter-on-cobblestone-street-in-bursa.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText:
          "I just watched Dune 2 and here’s my spoiler-free review...",
      feedPostUp: 430,
      feedPostDown: 20,
      feedPostComments: [
        "Can't wait to watch it!",
        "Loved the cinematography!"
      ],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/31042830/pexels-photo-31042830/free-photo-of-elegant-woman-in-black-dress-outside-antique-store.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "FitnessFreak",
      feedPostTime: "30m",
      feedPostViews: "800",
      feedPostTitle: "Best Workout Routine for Busy Professionals",
      feedPostText: "Here’s a 30-minute daily routine to stay fit...",
      feedPostUp: 220,
      feedPostDown: 5,
      feedPostComments: ["This is super helpful!", "Gonna try this!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30233748/pexels-photo-30233748/free-photo-of-colorful-traditional-attire-in-moroccan-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "GamerX",
      feedPostTime: "1h",
      feedPostViews: "1.8K",
      feedPostTitle: "Elden Ring DLC Announced!",
      feedPostImage:
          "https://images.pexels.com/photos/31047848/pexels-photo-31047848/free-photo-of-traditional-gassho-zukuri-house-in-shirakawa-go-japan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText: "FromSoftware just dropped the news!",
      feedPostUp: 780,
      feedPostDown: 12,
      feedPostComments: ["LET'S GOOO!", "Best game ever!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/13921027/pexels-photo-13921027.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "FinanceBro",
      feedPostTime: "3h",
      feedPostViews: "6K",
      feedPostTitle: "How I Saved \$10K in 6 Months!",
      feedPostText: "Here are some simple budgeting tips...",
      feedPostUp: 540,
      feedPostDown: 14,
      feedPostComments: ["Very useful!", "Gonna start saving now!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30038722/pexels-photo-30038722/free-photo-of-woman-applying-lipstick-in-classic-car-mirror.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "AnimeFanatic",
      feedPostTime: "5h",
      feedPostViews: "2.5K",
      feedPostTitle: "Attack on Titan Finale: A Perfect Ending?",
      feedPostImage:
          "https://images.pexels.com/photos/31120066/pexels-photo-31120066/free-photo-of-fresh-red-currants-in-a-vintage-metal-colander.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText:
          "Let's discuss whether the ending lived up to expectations.",
      feedPostUp: 1100,
      feedPostDown: 30,
      feedPostComments: ["No spoilers please!", "Epic finale!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/31075070/pexels-photo-31075070/free-photo-of-stylish-woman-in-pink-coat-against-brick-wall.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "BookLover",
      feedPostTime: "8h",
      feedPostViews: "3K",
      feedPostTitle: "Best Books to Read in 2025",
      feedPostText: "Here’s my list of must-read books for this year.",
      feedPostUp: 250,
      feedPostDown: 5,
      feedPostComments: ["Adding to my list!", "Great recommendations!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30349923/pexels-photo-30349923/free-photo-of-woman-relaxing-in-traditional-asian-pavilion.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "ChefMaster",
      feedPostTime: "17m",
      feedPostViews: "900",
      feedPostTitle: "Easy 10-Minute Pasta Recipe",
      feedPostText: "Try this delicious and quick pasta recipe!",
      feedPostUp: 360,
      feedPostDown: 3,
      feedPostComments: ["Made this today, so good!", "Yum!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/29714348/pexels-photo-29714348/free-photo-of-moody-pink-corridor-with-perspective-depth.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "TechInsider",
      feedPostTime: "53m",
      feedPostViews: "4.8K",
      feedPostTitle: "AI in 2025: What’s Coming Next?",
      feedPostText: "A deep dive into the future of AI and ML.",
      feedPostUp: 680,
      feedPostDown: 18,
      feedPostComments: ["Scary but exciting!", "AI is taking over!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/11968178/pexels-photo-11968178.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "HistoryNerd",
      feedPostTime: "37m",
      feedPostViews: "1.5K",
      feedPostTitle: "The Forgotten Battle of 1857",
      feedPostText: "Did you know about this hidden part of history?",
      feedPostUp: 430,
      feedPostDown: 2,
      feedPostComments: ["Fascinating!", "Never heard of this before!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30151303/pexels-photo-30151303/free-photo-of-romantic-beach-couple-embracing-in-monochrome.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "MotivationGuru",
      feedPostTime: "13m",
      feedPostViews: "2K",
      feedPostTitle: "5 Daily Habits of Highly Successful People",
      feedPostText: "Adopt these habits to transform your life.",
      feedPostUp: 570,
      feedPostDown: 6,
      feedPostComments: ["Love this!", "Gonna start today!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30221763/pexels-photo-30221763/free-photo-of-mother-and-daughter-in-scenic-field-portrait.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "CarEnthusiast",
      feedPostTime: "28m",
      feedPostViews: "3.2K",
      feedPostTitle: "Tesla’s New Model Y: Worth the Hype?",
      feedPostImage:
          "https://images.pexels.com/photos/31084666/pexels-photo-31084666/free-photo-of-melancholic-woman-in-elegant-black-dress-indoors.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedPostText: "Let’s break down the specs and pricing.",
      feedPostUp: 820,
      feedPostDown: 20,
      feedPostComments: ["Looks amazing!", "Tesla keeps innovating!"],
    ),
    HomeFeedModel(
      feedProfilePic:
          "https://images.pexels.com/photos/30569334/pexels-photo-30569334/free-photo-of-monochrome-portrait-of-a-man-in-a-beanie.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      feedProfileName: "TravelNomad",
      feedPostTime: "43m",
      feedPostViews: "2.7K",
      feedPostTitle: "Top 10 Hidden Travel Destinations",
      feedPostText: "Here are some underrated places to visit.",
      feedPostUp: 390,
      feedPostDown: 7,
      feedPostComments: ["Adding to my bucket list!", "Amazing suggestions!"],
    ),
  ];
}
