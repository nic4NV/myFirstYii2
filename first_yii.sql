-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 02 2017 г., 10:13
-- Версия сервера: 5.7.14
-- Версия PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `first_yii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `public_date` datetime NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `preview` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `public_date`, `upload_date`, `content`, `preview`, `link`) VALUES
(1715, 'http://www.nasa.gov/image-feature/dr-nancy-grace-roman-astronomer', '2017-03-31 14:49:00', '2017-04-02 09:46:34', 'Dr. Nancy Grace Roman is shown with a model of the Orbiting Solar Observatory (OSO) in 1962. She was the first Chief of Astronomy in the Office of Space Science at NASA Headquarters and the first woman to hold an executive position at NASA. She had oversight for the planning and development of programs including the Hubble Space Telescope.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/7538840276_f987be0cb7_o.jpg', 'http://www.nasa.gov/image-feature/dr-nancy-grace-roman-astronomer'),
(1716, 'http://www.nasa.gov/image-feature/robotics-work-on-space-station-set-up-thursday-spacewalk', '2017-03-30 14:49:00', '2017-04-02 09:46:34', 'The Pressurized Mating Adapter-3 (PMA-3) is in the grip of the International Space Station\\\'s Canadarm2 robotic arm during its relocation and attachment to the station\\\'s Harmony module on March 26,2017. A spacewalk by NASA astronauts Shane Kimbrough and Peggy Whitson, which began at 7:29 a.m., will finalize the PMA-3 cable connections on Harmony.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/iss050e060267.jpg', 'http://www.nasa.gov/image-feature/robotics-work-on-space-station-set-up-thursday-spacewalk'),
(1717, 'http://www.nasa.gov/image-feature/jpl/pia21572/the-splitting-of-the-dunes', '2017-03-29 13:35:00', '2017-04-02 09:46:34', 'The mound in the center of this Mars Reconnaissance Orbiter image appears to have blocked the path of the dunes as they marched south (north is to the left in this image) across the scene. Smaller dunes run perpendicular to some of the larger-scale dunes, probably indicating a shift in wind directions in this area.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia21572.jpg', 'http://www.nasa.gov/image-feature/jpl/pia21572/the-splitting-of-the-dunes'),
(1718, 'http://www.nasa.gov/image-feature/expedition-50-spacewalks-prepare-station-for-arrival-of-commercial-crew-spacecraft', '2017-03-28 15:06:00', '2017-04-02 09:46:34', 'Flight Engineer Thomas Pesquet of ESA is seen floating outside the International Space Station during a spacewalk. Pesquet and Expedition 50 Commander Shane Kimbrough of NASA conducted the six-hour-and-34-minute spacewalk on March 24, 2017. A second spacewalk, by Kimbrough and NASA astronaut Peggy Whitson, is scheduled for Thursday, March 30.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/33531796282_85801ec9ef_o.jpg', 'http://www.nasa.gov/image-feature/expedition-50-spacewalks-prepare-station-for-arrival-of-commercial-crew-spacecraft'),
(1719, 'http://www.nasa.gov/image-feature/jpl/pia21386/dark-spot-and-jovian-galaxy', '2017-03-27 12:15:00', '2017-04-02 09:46:35', 'This enhanced-color image of a mysterious dark spot on Jupiter seems to reveal a Jovian “galaxy” of swirling storms.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia21386.jpg', 'http://www.nasa.gov/image-feature/jpl/pia21386/dark-spot-and-jovian-galaxy'),
(1720, 'http://www.nasa.gov/image-feature/goddard/2017/hubble-spots-two-interacting-galaxies-defying-cosmic-convention', '2017-03-24 13:42:00', '2017-04-02 09:46:35', 'Hubble spots two interacting galaxies some 60 million light-years away in the constellation of Leo.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/potw1712a.jpg', 'http://www.nasa.gov/image-feature/goddard/2017/hubble-spots-two-interacting-galaxies-defying-cosmic-convention'),
(1721, 'http://www.nasa.gov/image-feature/dr-ellen-ochoa-on-the-flight-deck-of-shuttle-atlantis', '2017-03-23 16:50:00', '2017-04-02 09:46:35', 'On April 15, 2002, STS-110 Mission Specialist Ellen Ochoa works at the Remote Manipulator System controls on the aft flight deck of space shuttle Atlantis. Dr. Ochoa, a veteran astronaut, is currently the 11th director of Johnson Space Center. She became the first Hispanic woman to go to space when she served on the STS-56 mission.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/29623539086_d48a0b301f_o.jpg', 'http://www.nasa.gov/image-feature/dr-ellen-ochoa-on-the-flight-deck-of-shuttle-atlantis'),
(1722, 'http://www.nasa.gov/image-feature/space-station-view-of-mount-etna-erupting', '2017-03-22 15:13:00', '2017-04-02 09:46:35', 'The Expedition 50 crew aboard the International Space Station had a nighttime view from orbit of Europe\\\'s most active volcano, Mount Etna, erupting on March 19, 2017. Astronaut Thomas Pesquet of ESA captured this image, writing, \\"Mount Etna, in Sicily. The volcano is currently erupting and the molten ava is visible from space, at night!\\"', 'http://www.nasa.gov/sites/default/files/thumbnails/image/33418159621_f7bbe63b40_o.jpg', 'http://www.nasa.gov/image-feature/space-station-view-of-mount-etna-erupting'),
(1723, 'http://www.nasa.gov/image-feature/photographer-carla-thomas-on-a-supersonic-flight', '2017-03-21 14:44:00', '2017-04-02 09:46:35', '“Armstrong Flight Research Center chief pilot Nils Larson and I were flying supersonic runs to note the handling qualities between the single seat and two seat F/A-18 aircraft for the Sonic Booms in Atmospheric Turbulence, or SonicBAT program,\\" said Carla Thomas, one of NASA\\\'s two female in-flight photographers.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/cst1476.jpg', 'http://www.nasa.gov/image-feature/photographer-carla-thomas-on-a-supersonic-flight'),
(1724, 'http://www.nasa.gov/image-feature/mackenzie-river-in-canadas-northwest-territories', '2017-03-20 14:30:00', '2017-04-02 09:46:35', 'This view, acquired on Nov. 7, 2016, by the Operational Land Imager (OLI) on Landsat 8, shows a portion of Canada\\\'s Mackenzie River Delta and the town of Inuvik, home to more than 3,000 people. A frozen highway -- 194 kilometers (120 miles) long -- runs between the remote outposts of Inuvik and Tuktoyaktuk along the river’s East Channel.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/mackenzie_oli_2016312_lrg.jpg', 'http://www.nasa.gov/image-feature/mackenzie-river-in-canadas-northwest-territories'),
(1725, 'http://www.nasa.gov/image-feature/dublin-at-night', '2017-03-17 14:16:00', '2017-04-02 09:46:35', 'Expedition 50 Commander Shane Kimbrough of NASA shared this nighttime image of Dublin on March 17, 2017, writing, \\"Happy #StPatricksDay Spectacular #Dublin, Ireland captured by @thom_astro from @Space_Station. Enjoy the #StPatricksFest Parade down there!\\"', 'http://www.nasa.gov/sites/default/files/thumbnails/image/31754739604_69476516c5_o.jpg', 'http://www.nasa.gov/image-feature/dublin-at-night'),
(1726, 'http://www.nasa.gov/image-feature/annie-easley-computer-scientist-and-mathematician', '2017-03-16 13:54:00', '2017-04-02 09:46:35', 'Annie Easley at NASA Glenn Research Center. In 1955, Easley began her career at NASA, then the National Advisory Committee for Aeronautics (NACA), as a human computer performing complex mathematical calculations.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/grc-1981-c-03692.jpg', 'http://www.nasa.gov/image-feature/annie-easley-computer-scientist-and-mathematician'),
(1727, 'http://www.nasa.gov/image-feature/goddard/2017/nasas-webb-telescope-ghostly-lights-out-inspection', '2017-03-15 13:48:00', '2017-04-02 09:46:35', 'The technicians who are inspecting the telescope and its expansive golden mirrors look like ghostly wraiths in this image as they conduct a \\"lights out inspection\\" in the Spacecraft Systems Development and Integration Facility (SSDIF) at NASA\\\'s Goddard Space Flight Center in Greenbelt, Maryland.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/lightsout.jpg', 'http://www.nasa.gov/image-feature/goddard/2017/nasas-webb-telescope-ghostly-lights-out-inspection'),
(1728, 'http://www.nasa.gov/image-feature/traffic-free-and-sky-high', '2017-03-14 15:52:00', '2017-04-02 09:46:35', 'The Moderate Resolution Imaging Spectroradiometer (MODIS) on the Aqua satellite captured this natural-color image of cloud streets over the Barents Sea and Mezhdusharsky Island on March 7, 2017. Such formations occur frequently in the region in late winter.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/barentssea_amo_2017066_lg.jpg', 'http://www.nasa.gov/image-feature/traffic-free-and-sky-high'),
(1729, 'http://www.nasa.gov/image-feature/jpl/pia20523/the-big-one', '2017-03-13 14:19:00', '2017-04-02 09:46:35', 'Mimas\\\' gigantic crater Herschel lies near the moon\\\'s limb in this Cassini view.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia20523-1041.jpg', 'http://www.nasa.gov/image-feature/jpl/pia20523/the-big-one'),
(1730, 'http://www.nasa.gov/image-feature/goddard/2017/hubble-hones-in-on-a-hypergiants-home', '2017-03-10 14:20:00', '2017-04-02 09:46:35', 'The super star cluster Westerlund 1, only 15,000 light-years away in our Milky Way neighborhood, hosts one of the largest stars ever discovered.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/potw1710a.jpg', 'http://www.nasa.gov/image-feature/goddard/2017/hubble-hones-in-on-a-hypergiants-home'),
(1731, 'http://www.nasa.gov/image-feature/nasas-orion-spacecraft-parachutes-tested-at-us-army-yuma-proving-ground', '2017-03-09 15:49:00', '2017-04-02 09:46:35', 'Engineers Successfully Test the Parachutes for NASA\\\'s Orion Spacecraft at the U.S. Army Yuma Proving Ground', 'http://www.nasa.gov/sites/default/files/thumbnails/image/33204101741_4feb9a2c38_o.jpg', 'http://www.nasa.gov/image-feature/nasas-orion-spacecraft-parachutes-tested-at-us-army-yuma-proving-ground'),
(1732, 'http://www.nasa.gov/image-feature/women-scientists-at-nasa-in-january-1959', '2017-03-08 16:34:00', '2017-04-02 09:46:35', 'January 1959. Women Scientists Lucille Coltrane, Jean Clark Keating, Katherine Cullie Speegle, Doris \\\'Dot\\\' Lee, Ruth Whitman, and Emily Stephens Mueller.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/l-1959-l-00007.jpg', 'http://www.nasa.gov/image-feature/women-scientists-at-nasa-in-january-1959'),
(1733, 'http://www.nasa.gov/image-feature/jpl/pia21554/a-mass-of-viscous-flow-features', '2017-03-07 10:49:00', '2017-04-02 09:46:35', 'Viscous, lobate flow features are commonly found at the bases of slopes in the mid-latitudes of Mars, and are often associated with gullies.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/pia21554.jpg', 'http://www.nasa.gov/image-feature/jpl/pia21554/a-mass-of-viscous-flow-features'),
(1734, 'http://www.nasa.gov/image-feature/technicians-secure-the-protective-covering-around-cygnus', '2017-03-06 16:38:00', '2017-04-02 09:46:35', 'In the Space Station Processing Facility high bay at NASA\\\'s Kennedy Space Center in Florida, the Orbital ATK Cygnus pressurized cargo module is secured the KAMAG transporter and the crane has been removed.', 'http://www.nasa.gov/sites/default/files/thumbnails/image/33133284096_7e0bb60323_o_0.jpg', 'http://www.nasa.gov/image-feature/technicians-secure-the-protective-covering-around-cygnus');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(65) NOT NULL,
  `access_token` varchar(32) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `access_token`, `auth_key`) VALUES
(13, 'Brus', 'willis@mail.com', '96e79218965eb72c92a549dd5a330112', NULL, ''),
(14, 'Admin', '4NV@mail.com', '96e79218965eb72c92a549dd5a330112', '100-token', ''),
(15, 'test', 'test@mail.com', '96e79218965eb72c92a549dd5a330112', NULL, '18YgrEc-SxRT_Rgrv3p9wF2YPpmCPSDJ'),
(16, 'secondtest', 'test2@mail.com', '96e79218965eb72c92a549dd5a330112', NULL, 'yjcog3hLxHF6Zyuyiv2rMe4kXcg5LUSF');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_date` (`public_date`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1735;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
