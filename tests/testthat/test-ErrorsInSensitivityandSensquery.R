context("Errors in sensitivity and sensquery")
library(bnsens)

data("travel")
data("fire_alarm")

test_that("errors for mispecification in sensitivity",{
  expect_error(sensitivity(bnfit = travel,interest_node = "sO",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "uniform"),"Invalid input for interest_node")
  expect_error(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "uniform",evidence_nodes = "Ag",evidence_states = "young"),"Invalid input for evidence_nodes")
})

test_that("errors/warnings for order preserving and plot in sensitivity function",{
  expect_error(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "orderp"))
  expect_warning(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",node = "T",value_node = "car",value_parents = c("emp","big"),new_value = "all",covariation = "all"))
  expect_warning(sensitivity(bnfit = travel,interest_node = "O",interest_node_value = "emp",evidence_nodes = "R",evidence_states = "big",node = "R",value_node = "small",value_parents = "high",new_value = seq(0.55,0.95,0.05),covariation = "orderp"),"The plot won't be showed since all the values are not possible")
  })

test_that("errors/warnings for sensquery",{
  expect_warning(sensquery(bnfit = fire_alarm,interest_node = "Leaving",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes =c("Leaving","Alarm"),evidence_states =c("FALSE","TRUE") ),"The BN satisfies the given constraint. No parameter changes are needed.")
  expect_error(sensquery(bnfit = fire_alarm,interest_node = "Reort",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alarm",evidence_states = "TRUE"),"Invalid input for interest_node")
  expect_error(sensquery(bnfit = fire_alarm,interest_node = "Report",interest_node_value = "TRUE",new_value = 0.3,evidence_nodes = "Alam",evidence_states = "TRUE"),"Invalid input for evidence_nodes")
  })
