const buttons = document.querySelectorAll(".category button");

buttons.forEach(btn => {
  btn.addEventListener("click", () => {
    document.querySelector(".active").classList.remove("active");
    btn.classList.add("active");
  });
});