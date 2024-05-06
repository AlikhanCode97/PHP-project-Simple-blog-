-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 06 2024 г., 07:02
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `opensource`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `time`, `text`) VALUES
(19, 31, 36, '2023-06-19 20:45:39', 'This article beautifully captures the immense grandeur and infinite possibilities that space holds.'),
(20, 35, 36, '2023-06-20 03:15:43', 'I\'m in awe of the vastness of the universe and our never-ending quest for knowledge.'),
(21, 36, 36, '2023-06-20 03:15:47', 'The search for extraterrestrial life is a fascinating and thought-provoking subject.'),
(22, 31, 37, '2023-06-19 20:51:44', 'Space exploration not only expands our scientific knowledge but also inspires us to dream bigger and reach for the impossible.'),
(23, 35, 37, '2023-06-20 03:15:50', 'Elon is the best'),
(24, 36, 43, '2023-06-20 03:15:52', 'Fascinating read! It\'s amazing to see how electronics have evolved and transformed our lives.'),
(25, 35, 43, '2023-06-20 03:15:55', 'This text beautifully captures the profound impact of electronics on society and inspires me to explore the world of innovation even further.'),
(26, 31, 42, '2023-06-19 21:11:44', 'The exploration of light in this text is truly enlightening. It beautifully captures the symbolism and power that light holds in our lives, reminding us of its ability to guide, inspire, and renew.'),
(27, 36, 42, '2023-06-20 03:15:58', 'I found this text on the topic of light to be incredibly illuminating. It deepened my appreciation for the radiance and significance of light, and I now have a newfound sense of awe for its role in our world.'),
(28, 35, 41, '2023-06-20 03:16:00', 'Nature\'s Symphony is a poetic and thought-provoking text that beautifully captures the essence of our connection with the natural world.'),
(29, 36, 41, '2023-06-20 03:16:03', 'This text left me feeling inspired to reconnect with the natural world and find my place within its symphony.'),
(30, 31, 39, '2023-06-19 21:12:57', 'This text beautifully captures the essence of life as a symphony, reminding us to embrace our passions, seek fulfillment, and leave a lasting legacy that echoes in the hearts of others.'),
(31, 35, 37, '2023-06-19 21:13:44', 'wow'),
(32, 37, 38, '2023-06-19 21:26:01', 'New Comment'),
(33, 38, 38, '2023-06-19 21:36:15', 'second comment'),
(34, 31, 36, '2023-06-19 22:31:15', 'new one'),
(35, 39, 36, '2023-06-20 00:02:47', 'new comment');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` longblob NOT NULL,
  `author` int(100) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `published` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `author`, `topic_id`, `time`, `published`) VALUES
(36, 'It is space', '<p>Space, the final frontier, has fascinated and captivated humanity for centuries. From the twinkling stars adorning the night sky to the mesmerizing beauty of distant galaxies, the enigma of space has inspired our curiosity, pushing us to explore and unravel its secrets. In this compelling journey, we embark on a cosmic odyssey, delving into the depths of space and uncovering the wonders that lie beyond.</p><p>&nbsp;</p><p>The Magnitude of the Universe In this section, we delve into the mind-boggling scale of the universe. We explore mind-expanding concepts like galaxies, nebulae, and black holes, allowing our imaginations to soar as we attempt to comprehend the vastness of space. From the billions of stars in a galaxy to the trillions of galaxies strewn across the cosmos, we gain a newfound appreciation for the sheer magnitude of our universe.</p><p>&nbsp;</p><p>The Quest for Life Beyond Earth Are we alone in the universe? This age-old question has tantalized scientists and philosophers alike. In this section, we examine the possibility of extraterrestrial life, exploring the conditions necessary for life to exist and the ongoing search for habitable exoplanets. We delve into the intriguing field of astrobiology, pondering the potential for life to flourish beyond our home planet.</p><p>&nbsp;</p><p>Mysteries of the Universe Space is a treasure trove of enigmas waiting to be unraveled. From the nature of dark matter and dark energy to the origins of the universe itself, we confront the unsolved mysteries that continue to perplex astronomers and physicists. We ponder the Big Bang theory, cosmic inflation, and the concept of multiple universes, peering into the unknown and challenging the limits of our understanding.</p><p>&nbsp;</p><p>Human Exploration and the Future of Space In recent decades, humanity has ventured beyond Earth, pushing the boundaries of exploration. In this section, we examine the history of human spaceflight, from the pioneering days of Yuri Gagarin and Neil Armstrong to the multinational efforts of the International Space Station. We also contemplate the future of space exploration, envisioning missions to Mars, asteroid mining, and the potential for interstellar travel.</p><p>&nbsp;</p><p>As we conclude our celestial voyage, we realize that space is not just an abstract concept but a living testament to human curiosity, ingenuity, and the indomitable spirit of exploration. The mysteries of the cosmos continue to beckon us, inspiring generations to push the boundaries of our knowledge and to reach for the stars. Together, let us embrace the awe-inspiring wonders of space and embark on a lifelong journey of discovery, forever enchanted by the majesty that lies beyond our planet\'s atmosphere.</p>', 0x313638373232383937305f3139323078313038302e6a7067, 31, 69, '2024-01-03 19:05:29', 0),
(37, 'Elon Musk: Revolutionizing Space Exploration and BeyondT', '<p>Elon Musk, the visionary entrepreneur and innovator, has captured the world\'s attention with his audacious goals in space exploration. In this post, we delve into the remarkable journey of Elon Musk and his groundbreaking initiatives that are reshaping the future of space travel and colonization. From SpaceX to the ambitious vision of establishing a human presence on Mars, Musk\'s ventures are propelling us towards a new era of cosmic exploration.</p><p>&nbsp;</p><p>SpaceX: Revolutionizing Rocket Technology In this section, we explore SpaceX, Musk\'s pioneering aerospace company. We delve into the successes of the Falcon rockets and the revolutionary reusable rocket technology that has disrupted the space industry. From the first privately developed spacecraft to dock with the International Space Station to the ambitious Starship project, SpaceX is redefining the possibilities of space travel.</p><p>&nbsp;</p><p>Mars Colonization: Making Life Multiplanetary Elon Musk\'s vision of establishing a human colony on Mars has captivated the world\'s imagination. In this section, we examine Musk\'s ambitious plans for Martian colonization, including the development of the Starship spacecraft and the creation of a sustainable settlement on the Red Planet. We delve into the challenges, possibilities, and potential impact of making life multiplanetary.</p><p>&nbsp;</p><p>Starlink: Revolutionizing Global Connectivity Beyond space exploration, Musk\'s SpaceX has initiated the Starlink project, aiming to provide global internet coverage from space. In this section, we explore the innovative satellite constellation, its potential to bridge the digital divide, and the implications for global communication and connectivity.</p><p>&nbsp;</p><p>Inspiration and Impact Elon Musk\'s endeavors have ignited inspiration and sparked a renewed interest in space exploration. In this section, we reflect on the impact of Musk\'s vision, from inspiring a new generation of scientists and engineers to fostering collaboration and innovation in the space industry. We also discuss the potential long-term implications of his ventures on humanity\'s future and the exploration of the cosmos.</p><p>&nbsp;</p><p>Elon Musk, with his relentless drive and audacity, has revolutionized the way we perceive and pursue space exploration. Through SpaceX, Mars colonization plans, and Starlink, he has paved the way for a future where interplanetary travel and connectivity reach new heights. Elon Musk\'s transformative impact on the space industry continues to inspire us to reach for the stars and pushes the boundaries of human potential in the cosmos.</p>', 0x313638373232393433375f646f776e6c6f6164202831292e6a666966, 31, 69, '2024-01-03 19:05:39', 0),
(38, 'Embracing the Tapestry of Life: A Journey of Growth, Purpose, and Resilience', '<p>Life, in all its intricate beauty and unpredictable nature, weaves together a tapestry of experiences, challenges, joys, and sorrows. It is a journey that encompasses moments of profound introspection, awe-inspiring connections, and the constant pursuit of purpose. As we navigate the labyrinth of existence, we discover that life is not merely a series of events but an invitation to embrace growth, find our unique path, and cultivate resilience in the face of adversity.</p><p>&nbsp;</p><p>Embracing Change and Adaptation Change is the only constant in life, and our ability to adapt to its ever-shifting currents determines our capacity for growth. This chapter explores the art of letting go, embracing uncertainty, and welcoming change as an opportunity for transformation. Through personal anecdotes, philosophical insights, and practical strategies, we learn to navigate life\'s transitions with grace and resilience.</p><p>&nbsp;</p><p>Unveiling the Power of Purpose At the heart of a meaningful existence lies the pursuit of purpose. In this chapter, we delve into the exploration of one\'s passions, values, and talents, guiding readers on a transformative journey of self-discovery. By aligning our actions with a sense of purpose, we unlock an untapped wellspring of motivation, fulfillment, and a deeper connection to the world around us.</p><p>&nbsp;</p><p>Cultivating Authentic Connections Life\'s true richness lies not in the accumulation of possessions but in the relationships we forge along the way. This chapter highlights the significance of genuine human connections and explores strategies for nurturing meaningful bonds. From cultivating empathy and practicing active listening to fostering vulnerability and compassion, we uncover the profound impact of authentic relationships on our overall well-being.</p><p>&nbsp;</p><p>The Wisdom of Resilience Life\'s challenges can often test our mettle and resilience. In this chapter, we delve into the transformative power of resilience, examining its role in helping us navigate adversity, bounce back from failure, and emerge stronger. Drawing from inspiring stories of individuals who have overcome extraordinary hardships, we learn to harness our inner strength and embrace the resilience inherent within us.</p><p>&nbsp;</p><p>&nbsp;</p>', 0x313638373233303931375f70686f746f2d313531373936303431333834332d3061656538653262333238352e6a666966, 31, 70, '2023-06-20 03:15:17', 1),
(39, 'The Symphony of Life: Embracing the Rhythm of Passion, Fulfillment, and Legacy', '<p>Life, like a symphony, is a harmonious composition of moments that blend together to create a unique and captivating melody. It is a journey that calls upon us to discover our passions, seek fulfillment, and leave a lasting legacy. As we explore the intricate interplay of dreams, purpose, and impact, we learn that life is not just a series of notes but a transformative symphony waiting to be conducted.</p><p>&nbsp;</p><p>Unearthing the Melody Within Within each of us lies a melody, a passion waiting to be unearthed. In this chapter, we embark on a quest to identify our true passions, those notes that resonate deeply with our souls. Through introspection, self-exploration, and embracing our innate talents, we discover the power of pursuing what sets our hearts ablaze and unlocking the symphony within.</p><p>&nbsp;</p><p>Orchestrating a Life of Purpose Life finds its meaning when we connect our passions with a greater purpose. This chapter delves into the exploration of purpose, guiding readers to identify their unique role in the grand symphony of existence. By aligning our actions with our purpose, we create a harmonious composition that not only brings us fulfillment but also contributes to the world around us.</p><p>&nbsp;</p><p>Embracing the Crescendos and Cadenzas Life\'s journey is punctuated with crescendos of triumphs and cadenzas of challenges. This chapter celebrates the highs and explores the transformative potential hidden within the lows. We learn to embrace moments of growth, resilience, and adaptability, understanding that they are essential elements that shape us and contribute to the richness of our symphony.</p><p>&nbsp;</p><p>Weaving a Tapestry of Connections Life\'s symphony is enhanced by the connections we cultivate with others. This chapter highlights the importance of nurturing relationships, fostering meaningful connections, and creating a harmonious ensemble with the people who cross our paths. By embracing empathy, kindness, and open-heartedness, we contribute to a symphony of compassion and love.</p><p>&nbsp;</p><p>Composing a Lasting Legacy The final movement of our symphony is the legacy we leave behind. This chapter invites reflection on the impact we want to make on the world and the mark we wish to leave for future generations. We explore the significance of sharing our wisdom, nurturing future leaders, and contributing to causes that resonate with our values, ensuring that our symphony continues to echo long after we are gone.</p>', 0x313638373232393736345f70686f746f2d313439303733303134313130332d3663616332376161616239342e6a666966, 31, 70, '2023-06-19 20:56:04', 1),
(41, 'Nature\'s Symphony: Harmonizing with the Beauty, Balance, and Wisdom of the Natural World', '<p>Nature, with its awe-inspiring landscapes, diverse ecosystems, and profound serenity, presents us with a symphony of beauty, balance, and wisdom. It is a realm that invites us to reconnect with our roots, embrace our inherent connection to the Earth, and gain valuable insights from the harmony that pervades its every corner. As we delve into the wonders of nature, we discover a symphony that calls us to appreciate, protect, and find solace in the embrace of the natural world.</p><p>&nbsp;</p><p>The Melody of Discovery Nature\'s symphony begins with the melody of discovery. In this chapter, we embark on a journey to explore the breathtaking landscapes, hidden treasures, and captivating wonders that nature unveils. Through immersive experiences, mindful observation, and a sense of childlike wonder, we reconnect with the innate curiosity that lies within us and find ourselves attuned to the intricate melodies of the natural world.</p><p>&nbsp;</p><p>The Harmony of Interconnectedness Nature\'s symphony thrives on the delicate balance of interconnectedness. This chapter delves into the intricate web of life, exploring the symbiotic relationships, the delicate ecosystems, and the profound interdependence that characterizes nature. By understanding and appreciating our role as stewards of the Earth, we learn to embrace sustainability, environmental responsibility, and the preservation of our planet\'s symphonic harmony.</p><p>&nbsp;</p><p>The Rhythm of Seasons Nature\'s symphony is composed in the rhythm of seasons. This chapter celebrates the ever-changing cycles that grace our world, from the vibrant blooms of spring to the golden hues of autumn. We explore the significance of embracing the ebb and flow of life, the lessons of impermanence, and the wisdom that lies in surrendering to nature\'s cyclical cadence.</p><p>&nbsp;</p><p>Finding Solace in Wilderness Nature\'s symphony offers solace and refuge from the cacophony of modern life. In this chapter, we seek solace in the embrace of wilderness, immersing ourselves in the serene beauty of forests, mountains, and oceans. Through mindful practices, nature-based healing, and the restoration of our connection with the natural world, we discover the therapeutic power that nature holds to rejuvenate our spirits.</p><p>&nbsp;</p><p>Lessons from the Earth\'s Wisdom Nature\'s symphony is imbued with ancient wisdom. This chapter invites us to listen closely and learn from the teachings of the Earth. From resilience and adaptability to interconnectedness and balance, we uncover invaluable insights that nature offers, reminding us of our own place in the symphony of life and inspiring us to live in harmony with the world around us.</p><p>Conclusion: Nature\'s symphony is a masterpiece that beckons us to listen, observe, and immerse ourselves in its timeless beauty. As we embrace the melody of discovery, honor interconnectedness, appreciate the rhythm of seasons, find solace in wilderness, and heed the wisdom of the Earth, we develop a deeper reverence for nature and an unwavering commitment to its preservation. May this exploration of nature\'s symphony inspire us to cultivate a harmonious relationship with the natural world, fostering a sustainable and flourishing planet for generations to come.</p>', 0x313638373233303332385f6973746f636b70686f746f2d3531373138383638382d363132783631322e6a7067, 31, 71, '2023-06-19 21:05:28', 1),
(42, 'Illuminating Brilliance: Unveiling the Power, Radiance, and Symbolism of Light', '<p>Light, with its ethereal glow and captivating luminosity, has fascinated humanity since the dawn of time. It is a force that illuminates our world, both literally and metaphorically, guiding our path, sparking inspiration, and revealing hidden truths. As we embark on a journey into the realm of light, we discover the profound power, radiant beauty, and symbolic significance that light embodies in our lives.</p><p>&nbsp;</p><p>The Essence of Radiance Light, at its core, is the essence of radiance. In this chapter, we delve into the captivating properties of light, exploring its nature, the science behind it, and the remarkable ways it interacts with our surroundings. From the warm embrace of sunlight to the ethereal glow of bioluminescence, we uncover the transformative effect light has on our perception of the world.</p><p>&nbsp;</p><p>Illuminating Paths and Perspectives Light serves as a guiding force, illuminating our paths and shaping our perspectives. This chapter delves into the symbolism of light as a metaphor for clarity, enlightenment, and knowledge. We explore how embracing the light can help us navigate life\'s challenges, broaden our horizons, and gain a deeper understanding of ourselves and the world around us.</p><p>&nbsp;</p><p>The Dance of Shadows and Contrast Light\'s interplay with shadows creates a symphony of contrast and depth. In this chapter, we explore the beauty found in the dance between light and darkness. We delve into the metaphorical significance of shadows, understanding how they enhance the appreciation of light, symbolize the complexities of life, and provide context for the brilliance that emerges from contrast.</p><p>&nbsp;</p><p>Light as Inspiration and Creativity Light has long been a muse for artists, igniting inspiration and fueling creativity. This chapter celebrates the profound influence of light on artistic expression, from the play of light in paintings to the interplay of light and shadow in photography. We discover how light stimulates our imagination, evokes emotions, and becomes a catalyst for the creation of extraordinary works of art.</p><p>&nbsp;</p><p>Light as a Symbol of Hope and Renewal Light carries with it a powerful symbolism of hope, resilience, and renewal. In this chapter, we explore the metaphorical significance of light as it illuminates our darkest moments, offering solace, guiding us towards healing, and reminding us of the inherent strength within us. We discover the transformative power of finding light in times of adversity and how it inspires us to persevere and embrace a brighter future.</p><p>&nbsp;</p><p>Light, with its brilliance and symbolism, serves as a profound source of inspiration and illumination in our lives. From its radiant glow to its metaphorical significance, light guides us, sparks our creativity, and symbolizes hope. May this exploration of light\'s power, radiance, and symbolism inspire us to embrace the light within ourselves, to seek clarity and enlightenment, and to become beacons of positivity, illuminating the world around us with our own unique brilliance.</p>', 0x313638373233303431335f646f776e6c6f6164202832292e6a666966, 31, 72, '2023-06-19 21:06:53', 1),
(43, 'Sparking Innovation: Exploring the Marvels, Evolution, and Impact of Electronics', '<p>Electronics, the cornerstone of our modern world, have revolutionized the way we communicate, work, and navigate through daily life. From the humble beginnings of basic circuits to the intricate complexity of advanced technologies, the realm of electronics has sparked a wave of innovation that has reshaped society. As we delve into the marvels, evolution, and impact of electronics, we unlock a realm of limitless possibilities and transformative power.</p><p>&nbsp;</p><p>The Origins of Electronic Marvels This chapter traces the origins of electronics, exploring the early discoveries and inventors who laid the foundation for our modern electronic age. From the pioneering work of inventors like Thomas Edison and Nikola Tesla to the breakthroughs in vacuum tubes and transistors, we witness the birth of electronic marvels that would forever change the world.</p><p>&nbsp;</p><p>The Evolution of Electronics The evolution of electronics has been marked by exponential growth and relentless innovation. This chapter dives into the milestones that have propelled the field forward, from the advent of integrated circuits and microprocessors to the rapid development of consumer electronics and the emergence of artificial intelligence. We witness the ever-accelerating pace of progress that continues to reshape our lives.</p><p>&nbsp;</p><p>Enabling Connectivity and Communication Electronics have become the backbone of our global interconnectedness. In this chapter, we explore the transformative impact of electronics on communication and connectivity. From the invention of the telephone and radio to the modern-day wonders of the internet and wireless technologies, we witness how electronics have bridged distances, connected communities, and transformed the way we interact and exchange information.</p><p>&nbsp;</p><p>Empowering Industries and Innovation The impact of electronics extends far beyond communication, permeating various industries and fostering unprecedented innovation. This chapter delves into the role of electronics in sectors such as healthcare, transportation, energy, and entertainment. We explore how electronics have enabled groundbreaking advancements, improved efficiency, and opened doors to new realms of possibility.</p><p>&nbsp;</p><p>Addressing Challenges and the Future of Electronics As electronics continue to shape our world, we confront both opportunities and challenges. This chapter examines the environmental impact of electronic waste, the ethical considerations surrounding privacy and security, and the ongoing pursuit of sustainable and ethical electronics. We also peek into the future, exploring emerging technologies such as quantum computing, flexible electronics, and the Internet of Things, and envision the potential they hold for further innovation.</p><p>&nbsp;</p><p>Electronics have become the beating heart of our modern civilization, propelling us into a future defined by innovation and connectivity. From their humble origins to their pervasive influence across industries, electronics have transformed the way we live, work, and interact. As we embrace the marvels, evolution, and impact of electronics, may we do so with a commitment to responsible innovation, sustainability, and harnessing the immense power of electronics to create a brighter future for all.</p>', 0x313638373233303438375f646f776e6c6f6164202833292e6a666966, 31, 73, '2023-06-19 21:08:07', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'User'),
(2, 'Author'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `user_id`, `time`) VALUES
(69, 'Space', 31, '2023-06-19 20:38:56'),
(70, 'Life', 31, '2023-06-19 20:39:04'),
(71, 'Nature', 31, '2023-06-19 20:39:11'),
(72, 'Light', 31, '2023-06-19 20:39:16'),
(73, 'Electronics', 31, '2023-06-20 02:39:30');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `second_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `second_name`, `username`, `password`, `role_id`) VALUES
(31, 'AL@al.al', 'Alikhan', 'kalkazbek', 'AL', '$2y$10$0ItOh8B4hmafLLmF4oDwTuiOPR04k1DhW277RlkPGndqUSazeT1qO', 3),
(35, 'ahmed@gmail.com', 'Ahmed', 'Ishaq', 'Ahmedd', '$2y$10$KRqdQFZJ5s5cjdemL6wv4.3kJw1ALExeeAZiIN2GlXS4xWsdw3dTq', 1),
(36, 'anotherOne@gmail.com', 'Another', 'One', 'AnotherOne', '$2y$10$9.QNV6EJMcVVNUL2e66XcOnueek3SjghvGy72yFB15U6DaZa9TEny', 2),
(37, 'email@email.com', 'Surname', 'Namee', 'Username', '$2y$10$awAhc3CtWhk.2/mBsi.AYeWLD4/G6aI11cP6qXWsWNHQbbSBMxxe2', 1),
(38, 'user@user.com', 'Surname', 'Name', 'user', '$2y$10$q/umSLZ8CYnCK7kX5oy5Bu.Rf9ofEdbpXL.1bUErWD1L3a4YnXOOi', 1),
(39, 'newuser@gmail.cmom', 'New user', 'new user', 'userr', '$2y$10$kaC7GZ/RIVnW7TtfyTZoSe9ctjAQlITVLtk3dtRnr5jXSolytoD9G', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
