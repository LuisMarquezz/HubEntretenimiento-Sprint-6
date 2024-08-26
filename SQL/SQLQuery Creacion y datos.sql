--CREATE DATABASE HubEntretenimiento;

USE HubEntretenimiento;

-- Table User
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(255) NOT NULL,
    LastName NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Password NVARCHAR(255) NOT NULL
);

-- Table Movies
CREATE TABLE Movies (
    Id INT IDENTITY(1,1) PRIMARY KEY,
	Description NVARCHAR(1000),
    Author NVARCHAR(255) NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    Genre NVARCHAR(100),
    Year NVARCHAR(4),  -- Storing the year as text.
    Director NVARCHAR(255),
    Image VARCHAR(600)  -- Storing the image link.
);

-- Table FavoriteMovies
CREATE TABLE FavoriteMovies (
    UserId INT NOT NULL,
    MovieId INT NOT NULL,
    PRIMARY KEY (UserId, MovieId),
    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (MovieId) REFERENCES Movies(Id)
);

-- Table DislikedMovies
CREATE TABLE DislikedMovies (
    UserId INT NOT NULL,
    MovieId INT NOT NULL,
    PRIMARY KEY (UserId, MovieId),
    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (MovieId) REFERENCES Movies(Id)
);






INSERT INTO Movies (Author, Title, Genre, Year, Director, Description, Image) VALUES 
('James Cameron', 'Avatar', 'Sci-Fi', '2009', 'James Cameron', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'https://i.blogs.es/192c63/avatar_ver5_xlg_500/450_1000.jpg'),
('Christopher Nolan', 'Inception', 'Sci-Fi', '2010', 'Christopher Nolan', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 'https://i.blogs.es/bfb0b4/inception-origen-nuevo-cartel/450_1000.jpg'),
('Quentin Tarantino', 'Pulp Fiction', 'Crime', '1994', 'Quentin Tarantino', 'The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine in four tales of violence and redemption.', 'https://m.media-amazon.com/images/I/71wPS3A1EYL._AC_UF894,1000_QL80_.jpg'),
('Steven Spielberg', 'Jurassic Park', 'Adventure', '1993', 'Steven Spielberg', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'https://i.etsystatic.com/23402008/r/il/c44db4/3302687299/il_570xN.3302687299_icel.jpg'),
('Peter Jackson', 'The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', '2001', 'Peter Jackson', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'https://m.media-amazon.com/images/I/71X6YzwV0gL._AC_UF894,1000_QL80_.jpg'),
('Ridley Scott', 'Gladiator', 'Action', '2000', 'Ridley Scott', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://i.etsystatic.com/23402008/r/il/17b23b/3967026399/il_fullxfull.3967026399_mtkx.jpg'),
('George Lucas', 'Star Wars: Episode IV - A New Hope', 'Sci-Fi', '1977', 'George Lucas', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'https://i.etsystatic.com/18242346/r/il/9e630d/2119475822/il_fullxfull.2119475822_pxgf.jpg'),
('Francis Ford Coppola', 'The Godfather', 'Crime', '1972', 'Francis Ford Coppola', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sensacine.com%2Fpeliculas%2Fpelicula-1628%2Ffotos%2Fdetalle%2F%3Fcmediafile%3D21518547&psig=AOvVaw0q4MleidZFiOP7HOfXDD2_&ust=1724739380068000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOj514GBkogDFQAAAAAdAAAAABAE'),
('James Cameron', 'Titanic', 'Romance', '1997', 'James Cameron', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'https://m.media-amazon.com/images/I/51Ev8Mn6RdL._AC_UF894,1000_QL80_.jpg'),
('David Fincher', 'Fight Club', 'Drama', '1999', 'David Fincher', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into something much, much more.', 'https://mx.web.img3.acsta.net/r_1280_720/pictures/23/07/18/20/39/3161686.jpg');