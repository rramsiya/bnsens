context("Dissimilarity measures (CD_distance and KL)")
library(bnsens)

data("travel")

test_that("Correct class",{
  expect_that(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "all")$CD,is_a("data.frame"))
  expect_that(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "all")$KL,is_a("data.frame"))
})

test_that("error/warning with order preserving scheme", {
  expect_error(CD_distance(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(CD_distance(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  expect_error(KL(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(KL(bnfit = travel,node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  })

test_that("Number of outputs CD_distance",{
  expect_equal(nrow(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "orderp")$CD),20)
  expect_equal(nrow(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = 0.3,covariation = "all")$CD),1)
  expect_equal(nrow(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = c(0.4,0.5),covariation = "all")$CD),2)
  expect_equal(nrow(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.4,0.6,0.05),covariation = "all")$CD),5)
  expect_equal(ncol(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "uniform")$CD),2)
  expect_equal(ncol(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "proportional")$CD),2)
  expect_equal(ncol(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "orderp")$CD),2)
})

test_that("Correct output CD_distance",{
  expect_equal(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = 0.3,covariation = "orderp")$CD[1,2],0.486,tolerance=0.01)
  expect_true(is.na(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = c(0.4,0.6),covariation = "orderp")$CD[2,2]))
  })

test_that("Number of outputs KL",{
  expect_equal(nrow(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "orderp")$KL),20)
  expect_equal(nrow(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = 0.3,covariation = "all")$KL),1)
  expect_equal(nrow(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = c(0.4,0.5),covariation = "all")$KL),2)
  expect_equal(nrow(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = seq(0.4,0.6,0.05),covariation = "all")$KL),5)
  expect_equal(ncol(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "uniform")$KL),2)
  expect_equal(ncol(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "proportional")$KL),2)
  expect_equal(ncol(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "orderp")$KL),2)
})

test_that("Correct output KL",{
  expect_equal(KL(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = 0.3,covariation = "orderp")$KL[1,2],0.012,tolerance=0.01)
  expect_true(is.na(CD_distance(bnfit = travel,node = "T",value_node = "train",value_parents = c("emp","big"),new_value = c(0.4,0.6),covariation = "orderp")$CD[2,2]))
})