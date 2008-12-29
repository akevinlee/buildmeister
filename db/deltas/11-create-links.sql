CREATE TABLE links (
  id mediumint(9) NOT NULL auto_increment,
  cat_id tinyint(4) NOT NULL default '0',
  date_posted datetime NOT NULL,
  posted_by varchar(32) NOT NULL,
  title varchar(100) NOT NULL,
  summary mediumtext NOT NULL,
  url varchar(200) NOT NULL,
  preview_url varchar(200) NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--//@UNDO   
  
DROP TABLE IF EXISTS links;
  
--//  
