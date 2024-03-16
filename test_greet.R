source("greet.R")

test_that("the function greet, should greet one name passed as parameter",{
  
  expect_equal(greet("Carlos"),"Hello, Carlos")
  expect_equal(greet("Mario"),"Hello, Mario")
  expect_equal(greet("Peach"),"Hello, Peach")
  
})

describe("greet()",{
  it("can say hello to a user",{
    name <- "Carter"
    expect_equal(greet(name), "Hello, Carter")
  })
  it("can say hello to the word", {
    expect_equal(greet(), "Hello, world")
  })
})