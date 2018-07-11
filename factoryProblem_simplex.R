# A small factory makes two products, named Product 1 and Product 2.
# Each tonne of Product 1 consumes 30 working hours, and each tonne of
# Product 2 consumes 20 working hours. The business has a maximum of
# 2,700 working hours for the period considered. As for machine hours,
# each tonne of Products 1 and 2 consumes 5 and 10 machine hours,
# respectively. There are 850 machine hours available.
# Each tonne of Product 1 yields 20 million of profit, while Product 2 yields
# 60 million for each tonne sold. For technical reasons, the firm must produce a minimum of 95 tonnes in total between both products. We need
# to know how many tonnes of Product 1 and 2 must be produced to
# maximize total profit.
# 

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
