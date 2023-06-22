describe("add to cart", () => {
  it("can visit the homepage", () => {
    cy.visit("localhost:3000/");
  });
  it("adds product to cart, increase product by 1, then verifies count increase", () => {
    cy.contains("My Cart (0)"); // cart count is 0
    cy.contains("Add").first().click({ force: true }); //add first element to cart
    cy.contains("My Cart (1)"); // cart should be 1 .
  });
});
