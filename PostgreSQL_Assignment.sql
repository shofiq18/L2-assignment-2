-- Create rangers table

CREATE TABLE rangers (
    ranger_id serial PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
)

-- create species table 

CREATE TABLE species (
    species_id serial PRIMARY KEY, 
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    discovery_date date NOT NULL,
    conservation_status VARCHAR(50) NOT NULL CHECK (conservation_status IN ('Endangered', 'Vulnerable', 'Historic'))
);

-- create sightings table 
CREATE TABLE sightings (
    sighting_id serial PRIMARY KEY, 
     ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    notes TEXT
);


