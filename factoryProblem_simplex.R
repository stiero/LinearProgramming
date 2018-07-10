library(lpSolve)

objective_funtion <- c(20, 60)

constraints <- matrix(c(30, 20, 5, 10, 1, 1), ncol=2, byrow=TRUE)

constraints_direction <- c("<=", "<=", ">=")

rhs <- c(2700, 850, 95)

prod_sol <- lp("max", objective_funtion, constraints, constraints_direction, rhs,
               compute.sens = TRUE)

prod_sol$objval

prod_sol$solution

prod_sol$duals

prod_sol$duals.from
prod_sol$duals.to
prod_sol$sens.coef.from
prod_sol$sens.coef.to
