document.getElementById('search-btn').addEventListener('click', function() {
    const genre = document.getElementById('genre').value;
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'search_movies.php?genre=' + genre, true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            document.getElementById('movie-list').innerHTML = xhr.responseText;
        }
    }
    xhr.send();
});

window.onload = function() {
    const initialLoad = new XMLHttpRequest();
    document.getElementById('movie-list').innerHTML = 'Loading...';
    initialLoad.open('GET', 'search_movies.php', true);
    initialLoad.onload = function() {
        if (initialLoad.status === 200) {
            document.getElementById('movie-list').innerHTML = initialLoad.responseText;
        }
    }
    initialLoad.send();
};