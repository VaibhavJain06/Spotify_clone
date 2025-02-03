import 'package:flutter/material.dart';

class Data {
  final String title;
  final String id;
  final String url;
  final List<Color> musicbackColor;
  const Data({
    required this.title,
    required this.url,
    required this.musicbackColor,
    required this.id,
  });
}

class COLORS {
  final Color colors;
  final String title;
  const COLORS({required this.colors, required this.title});
}

class SongsList {
  final String title;
  final String subtitle;

  const SongsList({
    required this.title,
    required this.subtitle,
  });
}

class Album {
  final String name;
  final List<SongsList> songs;

  const Album(this.name, this.songs);
}

class LibraryList {
  final String title;
  final String subtitle;
  final String url;
  const LibraryList(
      {required this.title, required this.subtitle, required this.url});
}

const topmixeslist = [
  Data(
    title: 'Demo1',
    id: 'a1',
    url:
        "https://seed-mix-image.spotifycdn.com/v6/img/artist/4YRxDV8wJFPHPTeXepOstw/en/default",
    musicbackColor: [Color.fromARGB(255, 130, 86, 69), Colors.black],
  ),
  Data(
    title: 'Demo2',
    id: 'a2',
    url:
        "https://seed-mix-image.spotifycdn.com/v6/img/artist/2GoeZ0qOTt6kjsWW4eA6LS/en/default",
    musicbackColor: [Color.fromARGB(211, 140, 105, 92), Colors.black],
  ),
  Data(
    title: 'Demo3',
    id: 'a3',
    url:
        "https://seed-mix-image.spotifycdn.com/v6/img/artist/5wJ1H6ud777odtZl5gG507/en/default",
    musicbackColor: [Color.fromARGB(255, 192, 166, 166), Colors.black],
  ),
  Data(
    title: 'Demo4',
    id: 'a4',
    url: "https://i.scdn.co/image/ab6761610000e5ebcb6926f44f620555ba444fca",
    musicbackColor: [Color.fromARGB(255, 159, 127, 114), Colors.black],
  ),
  Data(
    title: 'Demo6',
    id: 'a6',
    url: "https://thisis-images.scdn.co/37i9dQZF1DZ06evO1n6IJz-default.jpg",
    musicbackColor: [Color.fromARGB(255, 137, 100, 85), Colors.black],
  ),
];

const recentlyplayedlist = [
  Data(
    title: 'Demo1',
    id: 'b1',
    url: "https://i.scdn.co/image/ab67616d0000b2735f3ede47954a93aa03efe5f9",
    musicbackColor: [],
  ),
  Data(
    title: 'Demo2',
    id: 'b2',
    url: "https://i.scdn.co/image/ab67616d0000b27366581b137a8b3afc8ccab3df",
    musicbackColor: [],
  ),
  Data(
    title: 'Demo3',
    id: 'b3',
    url: "https://i.scdn.co/image/ab67706f00000002256e5fd2d2b6df5b9e98ac4e",
    musicbackColor: [],
  ),
  Data(
    title: 'Demo4',
    id: 'b4',
    url: "https://i.scdn.co/image/ab67706f000000025b86750761a8b78aac8a6d2a",
    musicbackColor: [],
  ),
  Data(
    title: 'Demo5',
    id: 'b5',
    url: "https://i.scdn.co/image/ab67706f000000020f9071523edb8a48b0e961e2",
    musicbackColor: [],
  ),
  Data(
    title: 'Demo6',
    id: 'b6',
    url: "https://i.scdn.co/image/ab67706f000000023ec51dd9c17a9add42c2e249",
    musicbackColor: [],
  ),
];
const yourLibraryList = [
  LibraryList(
    title: 'Mitraz',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5eb114583feb331ad4c0548590a',
  ),
  LibraryList(
    title: 'AP Dhillon',
    subtitle: 'Artist',
    url:
        'https://lh3.googleusercontent.com/vWZmXgoqDLCBZk3nU5JvkM7KtviNkgk2MUbF43uilh9v1QMHvKIU4oQGy1uWB6hWv9tV6mjgM0DXu_gk=w544-h544-l90-rj',
  ),
  LibraryList(
    title: 'Anuv jain',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab67616100005174a837a6cb82dd949d5e1f9b53',
  ),
  LibraryList(
    title: 'Darshan Raval',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5ebe1e00861cdb6bf56b14a1118',
  ),
  LibraryList(
    title: 'Arman Malik',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab67616100005174c5911f22814f270d5004ae53',
  ),
  LibraryList(
    title: 'Vishal-Shekhar',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5eb90b6c3d093f9b02aad628eaf',
  ),
  LibraryList(
    title: 'Tulsi Kumar',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5eb341e2c83c11cffb1d88d1774',
  ),
  LibraryList(
    title: 'Amit Trivedi',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5eb1dcbb331f2318db2dd2c6bcf',
  ),
  LibraryList(
    title: 'Atif Aslam',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5ebc40600e02356cc86f0debe84',
  ),
  LibraryList(
    title: 'Diljit Dosanjh',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab6761610000e5ebfc043bea91ac91c222d235c9',
  ),
  LibraryList(
    title: 'Arjun Kanungo',
    subtitle: 'Artist',
    url: 'https://i.scdn.co/image/ab676161000051749e4f565e58303c3c780e41d2',
  ),
];
const List musicListData = [
  {
    "songs": [
      {
        "title": "Pyar Hota Kayi Baar Hai",
        "subtitle": "Pritam, Arjit Singh,Amitab...",
        "image":
            "https://c.saavncdn.com/187/Pyaar-Hota-Kayi-Baar-Hai-From-Tu-Jhoothi-Main-Makkaar-Hindi-2023-20230213152950-500x500.jpg",
      },
      {
        "title": "Woh Din",
        "subtitle": "Pritam, Arjit Singh",
        "image":
            "https://c.saavncdn.com/937/Chhichhore-Hindi-2019-20190904104023-500x500.jpg"
      },
      {
        "title": "Phehle Bhi Main",
        "subtitle": "Vishal Mishra, Raj Shekhar",
        "image":
            "https://c.saavncdn.com/092/ANIMAL-Hindi-2023-20231124191036-500x500.jpg"
      },
      {
        "title": "Shayad",
        "subtitle": "Pritam, Arjit Singh",
        "image":
            "https://c.saavncdn.com/929/Shayad-From-Love-Aaj-Kal--Hindi-2020-20200122112631-500x500.jpg"
      },
      {
        "title": "Tum Hi Ho",
        "subtitle": "Mithoon, Arijit Singh",
        "image":
            "https://c.saavncdn.com/693/Tum-Hi-Ho-From-Aashiqui-2--English-2019-20200106215945-500x500.jpg"
      },
      {
        "title": "Muskurane",
        "subtitle": "Jeet Gannguli, Arijit Singh",
        "image":
            "https://i.scdn.co/image/ab67616d0000b2733949c9e59198629ed3f792bd"
      },
      {
        "title": "Raabta",
        "subtitle": "Pritam, Arijit Singh",
        "image": "https://c.saavncdn.com/023/Raabta-Hindi-2017-500x500.jpg"
      },
      {
        "title": "Agar Tum Saath Ho",
        "subtitle": "A. R. Rahman, Arijit Singh",
        "image":
            "https://i.scdn.co/image/ab67616d0000b273da50894e074ecd5ce61de0a1"
      },
      {
        "title": "Channa Mereya",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/103/Channa-Mereya-From-Ae-Dil-Hai-Mushkil-Hindi-2016-500x500.jpg"
      },
      {
        "title": "Khairiyat",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/937/Chhichhore-Hindi-2019-20190904104023-500x500.jpg"
      },
    ],
  },
  {
    "songs": [
      {
        "title": "Woh Din",
        "subtitle": "Pritam, Arjit Singh",
        "image":
            "https://c.saavncdn.com/937/Chhichhore-Hindi-2019-20190904104023-500x500.jpg"
      },
      {
        "title": "Phehle Bhi Main",
        "subtitle": "Vishal Mishra, Raj Shekhar",
        "image":
            "https://c.saavncdn.com/092/ANIMAL-Hindi-2023-20231124191036-500x500.jpg"
      },
      {
        "title": "Hawa Banke",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/751/Hawa-Banke-Single-Punjabi-2019-20190710170223-500x500.jpg"
      },
      {
        "title": "Ek Tarfa",
        "subtitle": "Darshan Raval",
        "image":
            "https://i.scdn.co/image/ab67616d0000b2736172cb921e3f424892763522"
      },
      {
        "title": "Tera Zikr",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/820/Tera-Zikr-Hindi-2017-20171108125619-500x500.jpg"
      },
      {
        "title": "Bhula Dunga",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/581/Bhula-Dunga-Hindi-2020-20200320230352-500x500.jpg"
      },
      {
        "title": "Mehrama",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/862/Love-Aaj-Kal-Hindi-2020-20200214140423-500x500.jpg"
      },
      {
        "title": "Asal Mein",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/534/Asal-Mein-Hindi-2020-20200923062301-500x500.jpg"
      },
      {
        "title": "Dil Mera Blast",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/844/Dil-Mera-Blast-Single-Hindi-2019-20190903045239-500x500.jpg"
      },
      {
        "title": "Do Din",
        "subtitle": "Darshan Raval",
        "image":
            "https://c.saavncdn.com/049/Do-Din-Hindi-2018-20180906113119-500x500.jpg"
      },
    ],
  },
  {
    "songs": [
      {
        "title": "Marham",
        "subtitle": "Vishal Mishra, Raj Shekhar",
        "image":
            "https://c.saavncdn.com/413/Marham-Pehle-Bhi-Main-From-ANIMAL-Hindi-2023-20231223151003-150x150.jpg"
      },
      {
        "title": "Channa Mereya",
        "subtitle": "Vishal Mishra, Arijit Singh",
        "image":
            "https://c.saavncdn.com/103/Channa-Mereya-From-Ae-Dil-Hai-Mushkil-Hindi-2016-500x500.jpg"
      },
      {
        "title": "Teri Hogaiyaan",
        "subtitle": "Vishal Mishra",
        "image":
            "https://c.saavncdn.com/743/Broken-But-Beautiful-Season-2-Hindi-2019-20210603155120-500x500.jpg"
      },
      {
        "title": "Bandeya",
        "subtitle": "Vishal Mishra",
        "image":
            "https://c.saavncdn.com/780/Vishal-Mishra-s-Melody-Hindi-2021-20211107135013-500x500.jpg"
      },
      {
        "title": "Kaise Hua",
        "subtitle": "Vishal Mishra, Asees Kaur",
        "image":
            "https://c.saavncdn.com/980/Kaise-Hua-From-Kabir-Singh--Hindi-2019-20190613075009-500x500.jpg"
      },
      {
        "title": "Aaj Bhi",
        "subtitle": "Vishal Mishra, Darshan Raval",
        "image":
            "https://c.saavncdn.com/710/Aaj-Bhi-Hindi-2020-20200407000137-500x500.jpg"
      },
      {
        "title": "Door Aa Gaye",
        "subtitle": "Vishal Mishra",
        "image":
            "https://i.scdn.co/image/ab67616d0000b273c61ab13ab598d2da5e591f96"
      },
      {
        "title": "Mast Malang Jhoom",
        "subtitle": "Vishal Mishra, Neeti Mohan",
        "image":
            "https://c.saavncdn.com/815/Mast-Malang-Jhoom-From-Bade-Miyan-Chote-Miyan-Hindi-2024-20240228071803-500x500.jpg"
      },
      {
        "title": "Bade Miyan Chote Miyan Title Track",
        "subtitle": "Vishal Mishra, Pritam, Sonu Nigam",
        "image":
            "https://i.scdn.co/image/ab67616d00001e02be582ec98904df3d73cbbb0f"
      },
      {
        "title": "Pehle Bhi Main",
        "subtitle": "Vishal Mishra, Raj Shekhar",
        "image":
            "https://c.saavncdn.com/092/ANIMAL-Hindi-2023-20231124191036-500x500.jpg"
      }
    ]
  },
  {
    "songs": [
      {
        "title": "Kesariya",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://upload.wikimedia.org/wikipedia/en/3/3c/Kesariya_song_cover.jpg"
      },
      {
        "title": "Lutt Putt Gaya",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/265/Lutt-Putt-Gaya-From-Dunki-Hindi-2023-20231211171015-500x500.jpg"
      },
      {
        "title": "Leke Prabhu Ka Naam",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/770/Leke-Prabhu-Ka-Naam-From-Tiger-3-Hindi-2023-20231023111427-500x500.jpg"
      },
      {
        "title": "What Jhumka",
        "subtitle": "Pritam, Shilpa Rao",
        "image":
            "https://i.scdn.co/image/ab67616d0000b273d49b0b7c02f3e61babef11b7"
      },
      {
        "title": "Tere Pyaar Mein",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/367/Tere-Pyaar-Mein-From-Tu-Jhoothi-Main-Makkaar-Hindi-2023-20230203140532-500x500.jpg"
      },
      {
        "title": "Ranjha",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/264/Ranjha-From-Shershaah--Hindi-2021-20210804173407-500x500.jpg"
      },
      {
        "title": "Raataan Lambiyan",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/222/Raataan-Lambiyan-From-Shershaah--Hindi-2021-20210729181107-500x500.jpg"
      },
      {
        "title": "Jugnu",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://staticimg.amarujala.com/assets/images/2020/02/24/laal-singh-chaddha-song-jugnu_1582542453.jpeg?w=1200"
      },
      {
        "title": "Chal Ghar Chalen",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://i.scdn.co/image/ab67616d00001e02cdbd409f7fb9e87046a6abef"
      },
      {
        "title": "Hawayein",
        "subtitle": "Pritam, Arijit Singh",
        "image":
            "https://c.saavncdn.com/260/Hawayein-From-Jab-Harry-Met-Sejal--Hindi-201720170726112607-500x500.jpg"
      }
    ]
  },
  {
    "songs": [
      {
        "title": "Tera Hua",
        "subtitle": "Atif Aslam",
        "image":
            "https://c.saavncdn.com/401/Loveyatri-A-Journey-Of-Love-Hindi-2018-20181003-500x500.jpg"
      },
      {
        "title": "Ajnabi",
        "subtitle": "Atif Aslam, Mithoon",
        "image":
            "https://i.scdn.co/image/ab67616d0000b2739320c6119a542cd621c084e8"
      },
      {
        "title": "Tere Sang Yaara",
        "subtitle": "Atif Aslam, Meenal Jain",
        "image":
            "https://c.saavncdn.com/215/Tere-Sang-Yaara-From-Rustom--Hindi-2016-500x500.jpg"
      },
      {
        "title": "Baarish",
        "subtitle": "Atif Aslam, Bilal Saeed",
        "image":
            "https://c.saavncdn.com/679/Half-Girlfriend-Hindi-2017-500x500.jpg"
      },
      {
        "title": "Hona Tha Pyaar",
        "subtitle": "Atif Aslam, Yo Yo Honey Singh",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5qPnK4RUMYc6foyL_3VaAPtWB0LPMSmekM8G__hQ44Q&s"
      },
      {
        "title": "Pehli Nazar Mein",
        "subtitle": "Atif Aslam, Mithoon",
        "image":
            "https://c.saavncdn.com/385/Race-Hindi-2008-20230804165929-500x500.jpg"
      },
      {
        "title": "Tu Jaane Na",
        "subtitle": "Atif Aslam, A.R. Rahman",
        "image":
            "https://c.saavncdn.com/507/Tu-Jaane-Naa-Lofi-Mix-Hindi-2021-20230304205408-500x500.jpg"
      },
      {
        "title": "Jeena Jeena",
        "subtitle": "Atif Aslam, Sahir Ali Bagga",
        "image":
            "https://a10.gaanacdn.com/gn_img/albums/Bp1bAynb02/1bAynzP4b0/size_m.jpg"
      },
      {
        "title": "Dil Diyan Gallan",
        "subtitle": "Atif Aslam, Ishq Bector",
        "image":
            "https://a10.gaanacdn.com/gn_img/song/2lV3d1WRgB/V3d56QQoWR/size_m_1516003439.webp"
      },
      {
        "title": "Bachna Ae Haseeno",
        "subtitle": "Atif Aslam, Pritam",
        "image": "https://upload.wikimedia.org/wikipedia/en/2/25/Bahcover.jpg"
      }
    ]
  },
];

const diffColor = [
  COLORS(colors: Color.fromARGB(255, 253, 114, 161), title: 'Music'),
  COLORS(colors: Color.fromARGB(255, 74, 128, 76), title: 'Podcasts'),
  COLORS(colors: Color.fromARGB(255, 127, 65, 234), title: 'Live Events'),
  COLORS(colors: Color.fromARGB(255, 230, 70, 56), title: 'Made For You'),
  COLORS(colors: Color.fromARGB(255, 77, 84, 77), title: 'New Release'),
  COLORS(colors: Color.fromARGB(255, 184, 24, 24), title: 'Hindi'),
  COLORS(colors: Colors.cyan, title: 'Punjabi'),
  COLORS(colors: Colors.indigo, title: 'Tamil'),
  COLORS(colors: Colors.red, title: 'Pop'),
  COLORS(colors: Color.fromARGB(255, 239, 192, 52), title: 'Love'),
  COLORS(colors: Color.fromARGB(255, 40, 38, 70), title: 'Discover'),
  COLORS(colors: Color.fromARGB(255, 184, 151, 162), title: 'Party'),
];


/*
SongsList(title: 'Woh Din', subtitle: 'Pritam, Arjit Singh', id: '0'),
  SongsList(
      title: 'Phehle Bhi Main',
      subtitle: 'Vishal Mishra, Raj Shekhar',
      id: '1'),
  SongsList(title: 'Shayad', subtitle: 'Pritam, Arjit Singh', id: '2'),
  SongsList(title: 'Khairiyat', subtitle: 'Pritam, Arjit Singh', id: '3'),
  SongsList(
      title: 'Pyar Hota Kayi Baar Hai',
      subtitle: 'Pritam, Arjit Singh,Amitabh Bhattacharya',
      id: '4'),
  SongsList(title: 'Woh Din', subtitle: 'Pritam, Arjit Singh', id: '5'),
  SongsList(
      title: 'Phehle Bhi Main',
      subtitle: 'Vishal Mishra, Raj Shekhar',
      id: '6'),
  SongsList(title: 'Shayad', subtitle: 'Pritam, Arjit Singh', id: '7'),
  SongsList(title: 'Khairiyat', subtitle: 'Pritam, Arjit Singh', id: '8'),
  SongsList(title: 'Woh Din', subtitle: 'Pritam, Arjit Singh', id: '0'),
  SongsList(
      title: 'Phehle Bhi Main',
      subtitle: 'Vishal Mishra, Raj Shekhar',
      id: '1'),
  SongsList(title: 'Shayad', subtitle: 'Pritam, Arjit Singh', id: '2'),
  SongsList(title: 'Khairiyat', subtitle: 'Pritam, Arjit Singh', id: '3'),
  SongsList(
      title: 'Pyar Hota Kayi Baar Hai',
      subtitle: 'Pritam, Arjit Singh,Amitabh Bhattacharya',
      id: '4'),
  SongsList(title: 'Woh Din', subtitle: 'Pritam, Arjit Singh', id: '5'),
  SongsList(
      title: 'Phehle Bhi Main',
      subtitle: 'Vishal Mishra, Raj Shekhar',
      id: '6'),
  SongsList(title: 'Shayad', subtitle: 'Pritam, Arjit Singh', id: '7'),
  SongsList(title: 'Khairiyat', subtitle: 'Pritam, Arjit Singh', id: '8'),
];*/