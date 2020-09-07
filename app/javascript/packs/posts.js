function toggleComments(element) {


    var secId = element.getAttribute("comment-sec-id")
    var commentSection = document.getElementById("comment-sec-"+secId);
    if (!commentSection){
        console.log("Can't find " + "comment-sec-"+secId)
    }
    if (commentSection.classList.contains("d-flex")) {
        commentSection.classList.remove("d-flex");
        commentSection.classList.add("d-none");

    } else {
        commentSection.classList.remove("d-none");
        commentSection.classList.add("d-flex");
    }
}

document.addEventListener("turbolinks:load", function() {



    var elements = document.querySelectorAll("#clickable_icon");
    for (var i = 0; i < elements.length; i++) {

        elements[i].addEventListener("click", function(event){
            toggleComments(event.currentTarget)
        });
    }
})


/*
function toggleComments(element) {
    var secId = element.getAttribute("comment-sec-id")
    var commentSection = document.getElementById(secId);

    if (commentSection.classList.contains("d-flex")) {
        commentSection.classList.remove("d-flex");
        commentSection.classList.add("d-none");

    } else {
        commentSection.classList.remove("d-none");
        commentSection.classList.add("d-flex");
    }
}*/
