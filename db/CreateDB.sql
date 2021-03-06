CREATE TABLE Gamer (
    GamerID SERIAL PRIMARY KEY NOT NULL,
    GamerName VARCHAR(20) NOT NULL,
    CreatedOn TIMESTAMP NOT NULL,
    ModifiedOn TIMESTAMP NOT NULL,
    CreatedBy INT REFERENCES Gamer(GamerID) NOT NULL,
    ModifiedBy INT REFERENCES Gamer(GamerID) NOT NULL
);


CREATE TABLE City (
    CityID SERIAL PRIMARY KEY NOT NULL,
    CityName VARCHAR(58) NOT NULL,
    Latitude FLOAT NOT NULL,
    Longitude FLOAT NOT NULL,
    Elevation FLOAT NOT NULL,
    CityPopulation INT,
    CreatedOn TIMESTAMP NOT NULL,
    ModifiedOn TIMESTAMP NOT NULL,
    CreatedBy INT REFERENCES Gamer(GamerID) NOT NULL,
    ModifiedBy INT REFERENCES Gamer(GamerID) NOT NULL
);

CREATE TABLE Map (
    MapID SERIAL PRIMARY KEY NOT NULL,
    MapName VARCHAR(58) NOT NULL,
    CreatedOn TIMESTAMP NOT NULL,
    ModifiedOn TIMESTAMP NOT NULL,
    CreatedBy INT REFERENCES Gamer(GamerID) NOT NULL,
    ModifiedBy INT REFERENCES Gamer(GamerID) NOT NULL
);

CREATE TABLE MapCity (
    MapCityID SERIAL PRIMARY KEY NOT NULL,
    CityID INT REFERENCES City(CityID) NOT NULL,
    MapID INT REFERENCES Map(MapID) NOT NULL,
    CreatedOn TIMESTAMP NOT NULL,
    ModifiedOn TIMESTAMP NOT NULL,
    CreatedBy INT REFERENCES Gamer(GamerID) NOT NULL,
    ModifiedBy INT REFERENCES Gamer(GamerID) NOT NULL
);

CREATE TABLE Game (
    GameID SERIAL PRIMARY KEY NOT NULL,
    MapID INT REFERENCES Map(MapID) NOT NULL,
    GameDate DATE NOT NULL,
    GameTime TIME NOT NULL,
    Points INT NOT NULL,
    GamerID INT REFERENCES Gamer(GamerID) NOT NULL,
    CreatedOn TIMESTAMP NOT NULL,
    ModifiedOn TIMESTAMP NOT NULL,
    CreatedBy INT REFERENCES Gamer(GamerID) NOT NULL,
    ModifiedBy INT REFERENCES Gamer(GamerID) NOT NULL
);



