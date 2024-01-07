document.addEventListener('DOMContentLoaded', function () {
    const addBookSection = document.getElementById('addBook');
    const searchBooksSection = document.getElementById('searchBooks');

    document.getElementById('category').addEventListener('change', function () {
        const selectedCategory = this.value;
        addBookSection.classList.add('hidden');
        searchBooksSection.classList.add('hidden');

        if (selectedCategory === 'computers') {
            document.getElementById('computerCategory').classList.remove('hidden');
            addBookSection.classList.remove('hidden');
        } else if (selectedCategory === 'humanities') {
            // Similar logic for other categories
        } else if (selectedCategory === 'electrical') {
            // Similar logic for other categories
        } else if (selectedCategory === 'mechanical') {
            // Similar logic for other categories
        }
    });
});

function checkBookAvailability() {
    const bookCode = document.getElementById('bookCode').value;
    const availabilityResult = document.getElementById('availabilityResult');

    // Logic to check book availability goes here
    // This part would typically involve making a request to a server
    // and checking the availability in a database.

    // For this simplified example, just display a message indicating that the book is available.
    availabilityResult.innerHTML = `Book with code ${bookCode} is available!`;
}
