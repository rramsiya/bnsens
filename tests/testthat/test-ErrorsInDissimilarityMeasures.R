context("Errors in dissimilarity measures (CD_distance and KL)")
library(bnsens)

data("travel")

test_that("error/warning with order preserving scheme", {
  expect_error(CD_distance(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(CD_distance(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  expect_error(KL(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(KL(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  })

test_that("error/warnings for plots margins or existence", {
  expect_warning(expect_error(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.50,0.95,0.05),covariation = "orderp")))
  expect_warning(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
  expect_warning(expect_error(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.50,0.95,0.05),covariation = "orderp")))
  expect_warning(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
  })
