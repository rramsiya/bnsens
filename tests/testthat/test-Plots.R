context("Plots")
library(bnsens)

data("travel")

test_that("CD_distance: error/warnings for plots margins or existence", {
  expect_warning(expect_error(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.50,0.95,0.05),covariation = "orderp")))
  expect_warning(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
})

test_that("KL: error/warnings for plots margins or existence", {
  expect_warning(expect_error(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.50,0.95,0.05),covariation = "orderp")))
  expect_warning(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
  })

test_that("sensitivity: errors/warnings for order preserving and plot in sensitivity function",{
  expect_error(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  expect_warning(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",evidence_nodes = "R",evidence_states = "big",node = "R",value_node = "small",value_parents = "high",new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
})