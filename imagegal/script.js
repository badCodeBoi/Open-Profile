function showImageDetails(imageNumber) {
    const imageDetails = document.getElementById(`imageDetails${imageNumber}`);
    if (imageDetails) {
        imageDetails.classList.toggle('hidden');
    }
}
function toggleLike(imageNumber) {
    var likeCountElement = document.getElementById("likeCount" + imageNumber);
    var currentLikeCount = parseInt(likeCountElement.innerText);

    var isLiked = likeCountElement.classList.toggle("liked");
    likeCountElement.innerText = isLiked ? currentLikeCount + 1 : currentLikeCount - 1;
}
