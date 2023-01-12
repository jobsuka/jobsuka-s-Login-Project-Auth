CREATE TABLE `profile_escort` (
  `no` int(5) UNSIGNED ZEROFILL NOT NULL,
  `img_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `img_file` varchar(40) CHARACTER SET utf8 NOT NULL,
  `userid` int(9) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `fileupload` varchar(200) CHARACTER SET utf8 NOT NULL,
  `aboutme` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(11) CHARACTER SET utf8 NOT NULL,
  `age` varchar(11) CHARACTER SET utf8 NOT NULL,
  `eyes` varchar(11) CHARACTER SET utf8 NOT NULL,
  `hair_color` varchar(11) CHARACTER SET utf8 NOT NULL,
  `hair_length` varchar(11) CHARACTER SET utf8 NOT NULL,
  `hair_public` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bust_size` varchar(11) CHARACTER SET utf8 NOT NULL,
  `bust_type` varchar(11) CHARACTER SET utf8 NOT NULL,
  `travel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `weight` varchar(20) CHARACTER SET utf8 NOT NULL,
  `height` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ethnicity` varchar(20) CHARACTER SET utf8 NOT NULL,
  `orientation` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tattoo` varchar(20) CHARACTER SET utf8 NOT NULL,
  `piercing` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(20) CHARACTER SET utf8 NOT NULL,
  `languages` varchar(20) CHARACTER SET utf8 NOT NULL,
  `services` varchar(20) CHARACTER SET utf8 NOT NULL,
  `available_for` varchar(20) CHARACTER SET utf8 NOT NULL,
  `meeting_with` varchar(20) CHARACTER SET utf8 NOT NULL,
  `smoker` varchar(20) CHARACTER SET utf8 NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dateup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `uploadfile`
--
ALTER TABLE `profile_escort`
  ADD PRIMARY KEY (`no`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `uploadfile`
--
ALTER TABLE `profile_escort`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;