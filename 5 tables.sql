create table OrderDetail(
  GameDistributorOrderID smallint not null,
  GameID smallint not null,
  QuantityOrdered int not null,
  ActualUniPrice decimal(5,2) not null,
primary key (GameDistributorOrderID, GameID),
foreign key (GameID) references part(Game),
foreign key (GameDistributorOrderID) references part(GameDistributorOrder)
) ENGINE= InnoDB;

create table GameDistributorOrder(
  GameDistributorOrderID smallint not null,
  SupplyDate date not null,
  GameDistributorID smallint not null,
primary key (GameDistributorOrderID),
foreign key (GameDistributorID) references part(GameDistributor)
) ENGINE= InnoDB;

create table GameShipmentDetail(
  GameID smallint not null,
  GameShipmentID smallint not null,
  QuantityRecieved int, 
primary key (GameID, GameShipmentID),
foreign key (GameID) references part(Game),
foreign key (GameShipmentID) references part(GameShipment)
) ENGINE= InnoDB;

create table Game(
  GameID smallint not null,
  Genre varchar(50),
  Review text,
  StarRating smallint,
  ClassificationRating varchar(5),
  PlatformNotes text,
  PromotionLink varchar(50),
  Cost decimal(5,2),
primary key (GameID)
) ENGINE= InnoDB;

create table Achievement(
  AchievementID smallint not null,
  InstanceRunID smallint not null,
  WhenAchieved datetime,
  Name varchar(45),
  RewardBody varchar(45),
primary key (AchievementID, InstanceRunID),
foreign key (InstanceRunID) references part(InstanceRun)
) ENGINE= InnoDB;







