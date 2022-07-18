

using Logging

using StructuralIdentifiability

logger = Logging.SimpleLogger(stdout, Logging.Info)
global_logger(logger)

ode = @ODEmodel(
    x1'(t) = x1*(a1-b11*ln(x1(t))-b12*ln(x2(t))),
    x2'(t) = x2(t)*(a2-b21*ln(x1(t))-b22*ln(x2(t))),
    y1(t) = x1
)

@time println(assess_identifiability(ode))


