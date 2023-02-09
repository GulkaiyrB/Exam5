CREATE TABLE Company(
                        id INTEGER PRIMARY KEY,
                        name VARCHAR(50) NOT NULL
);

CREATE TABLE Passenger(
                          id INTEGER PRIMARY KEY,
                          name VARCHAR(50) NOT NULL
);

CREATE TABLE Trip(
                     id INTEGER PRIMARY KEY,
                     company_id INTEGER REFERENCES Company(id),
                     plane VARCHAR(50),
                     town_from VARCHAR(50),
                     town_to VARCHAR(50),
                     time_out TIMESTAMP,
                     time_in TIMESTAMP
);

CREATE TABLE Pass_in_trip(
                             id INTEGER PRIMARY KEY,
                             trip_id INTEGER REFERENCES Trip(id),
                             passenger_id INTEGER REFERENCES Passenger(id),
                             place VARCHAR(50)
);


