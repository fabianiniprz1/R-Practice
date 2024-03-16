source("average.R")

test_that("'average' calculate the mean", {
  expect_equal(average(c(1,2,3)), 2)
  expect_equal(average(c(-1,-2,-3)), -2)
  expect_equal(average(c(-1,0,1)), 0)
  expect_equal(average(c(0.5,0.1)),0.3)
})

test_that("'average' returns NAs", {
  expect_equal(suppressWarnings(average(c(1,NA,3))), NA)
  expect_equal(suppressWarnings(average(c(NA,NA,NA))), NA)
})

test_that("'average' warnd NAs in input", {
  expect_warning(average(c(NA,2,3)))
  expect_warning(average(c(NA,NA,NA)))
})

test_that("'average' stop if 'x' is non-numeric", {
  expect_error(average(c("NA,2,3")))
  expect_error(average(c("quack!")))
})
