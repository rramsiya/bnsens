context("Tests for sensitivity and sensquery")
library(bnsens)

data("travel")
data("fire_alarm")

test_that("Correct class and output sensitivity",{
  expect_that(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "train",value_parents = c("emp","big"),new_value = "all",covariation = "all")$sensitivity,is_a("data.frame"))
  expect_equal(sensitivity(bnfit = travel,interest_node = "E",interest_node_value = "high",evidence_nodes = "O",evidence_states = "self",node = "A",value_node = "old",value_parents = NULL,new_value = 0.6383142,covariation = "proportional")$sensitivity[,2],0.7,tolerance=0.001)
})

test_that("errors for mispecification in sensitivity",{
  expect_error(sensitivity(bnfit = travel,interest_node = "sO",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "uniform"),"Invalid input for interest_node")
  expect_error(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "uniform",evidence_nodes = "Ag",evidence_states = "young"),"Invalid input for evidence_nodes")
})

test_that("Correct class and output sensquery",{
  expect_that(sensquery(bnfit = fire_alarm,interest_node = "Report",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alarm",evidence_states = "TRUE"),is_a("data.frame"))
  expect_equal(sensquery(bnfit = fire_alarm,interest_node = "Report",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alarm",evidence_states = "TRUE")[,5],c(0.339545,0.391892),tolerance=0.001)
})

test_that("errors/warnings for sensquery",{
  expect_warning(sensquery(bnfit = fire_alarm,interest_node = "Leaving",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes =c("Leaving","Alarm"),evidence_states =c("FALSE","TRUE") ),"The BN satisfies the given constraint. No parameter changes are needed.")
  expect_error(sensquery(bnfit = fire_alarm,interest_node = "Reort",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alarm",evidence_states = "TRUE"),"Invalid input for interest_node")
  expect_error(sensquery(bnfit = fire_alarm,interest_node = "Report",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alam",evidence_states = "TRUE"),"Invalid input for evidence_nodes")
  })
