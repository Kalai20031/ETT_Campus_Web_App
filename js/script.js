// Simple validation for all forms


document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");

    form.addEventListener("submit", function (e) {
        const username = document.querySelector("input[name='username']").value.trim();
        const password = document.querySelector("input[name='password']").value.trim();

        if (username === "" || password === "") {
            e.preventDefault(); // stop form submission
            alert("Please fill in all fields!");
        }
    });
});



