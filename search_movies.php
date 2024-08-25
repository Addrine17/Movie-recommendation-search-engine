<?php
$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "movie_recommendations";

$conn = new mysqli($servername, $username, $password, $dbname, 4307);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$genre = isset($_GET['genre']) ? $_GET['genre'] : '';

if ($genre === "") {
    $sql = "SELECT * FROM moviedata";
    $result = $conn->query($sql);
    if (!$result) {
        die("Query failed: " . $conn->error);
    }
} else {
    $genre = "%" . $genre . "%";
    $sql = $conn->prepare("SELECT * FROM moviedata WHERE Genre LIKE ?");
    if ($sql === false) {
        die("SQL preparation failed: " . $conn->error);
    }
    $sql->bind_param("s", $genre);
    if (!$sql->execute()) {
        die("Query execution failed: " . $sql->error);
    }
    $result = $sql->get_result();
    if (!$result) {
        die("Fetching results failed: " . $conn->error);
    }
}

$output = '';

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $output .= '<div class="movie-item">';
        $output .= '<img src="' . $row['Poster_URL'] . '" alt="' . $row['Movie_Title'] . '">';
        $output .= '<div class="movie-title">' . $row['Movie_Title'] . '</div>';
        $output .= '<div class="movie-genre">Genre: ' . $row['Genre'] . '</div>';
        $output .= '</div>';
    }
} else {
    $output .= '<div>No movies found.</div>';
}

echo $output;

$conn->close();
?>