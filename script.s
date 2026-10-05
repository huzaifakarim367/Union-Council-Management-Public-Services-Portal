// MOBILE MENU

const menuBtn = document.getElementById("menuBtn");
const navMenu = document.getElementById("navMenu");

menuBtn.addEventListener("click", function () {
    navMenu.classList.toggle("active");
});


// CLOSE MOBILE MENU AFTER CLICKING A LINK

const navLinks = document.querySelectorAll("#navMenu a");

navLinks.forEach(function (link) {

    link.addEventListener("click", function () {
        navMenu.classList.remove("active");
    });

});


// SERVICE MODAL

function showService(serviceName) {

    const modal = document.getElementById("modal");
    const modalTitle = document.getElementById("modalTitle");
    const modalText = document.getElementById("modalText");

    modalTitle.textContent = serviceName;

    modalText.textContent =
        "Here you can add the requirements, fees, processing time, documents and application procedure for " +
        serviceName +
        ".";

    modal.classList.add("show");
}


// CLOSE MODAL

function closeModal() {

    const modal = document.getElementById("modal");

    modal.classList.remove("show");
}


// CLOSE MODAL WHEN CLICKING OUTSIDE

window.addEventListener("click", function (event) {

    const modal = document.getElementById("modal");

    if (event.target === modal) {
        closeModal();
    }

});


// ONLINE APPLICATION

const applicationForm =
    document.getElementById("applicationForm");

applicationForm.addEventListener("submit", function (event) {

    event.preventDefault();

    const name =
        document.getElementById("name").value;

    const service =
        document.getElementById("service").value;

    const message =
        document.getElementById("message");

    message.textContent =
        "Thank you " +
        name +
        ". Your " +
        service +
        " application has been submitted successfully.";

    applicationForm.reset();

});


// CURRENT YEAR

document.getElementById("year").textContent =
    new Date().getFullYear();