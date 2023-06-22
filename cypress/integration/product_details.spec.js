describe("product details page", () => {
  it("There is a homepage", () => {
    cy.visit("http://localhost:3000/");
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });


});
