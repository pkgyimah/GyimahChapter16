# Check to see if I get what I expect
test_that('is the length Equal', {
  expect_equal(length(fizzBuzz(1:10)), 10)
  expect_equal(length(fizzBuzz(sample(20))), 20)
})

test_that('Test whether user inputs a negative, zero, or infinite value ', {
  expect_equal(((sum(is.infinite(1:20))>=1)| 0 %in% 1:20 | sum(1:20<0)>=1), FALSE)
  expect_error(fizzBuzz(-1:10))
  expect_error(fizzBuzz(Inf))
})
