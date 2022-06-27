#--------------------------------------------------------------------------
# Raia V et al. (2011) Dynamic mathematical modeling of IL13-induced 
# signaling in Hodgkin and primary mediastinal B-cell lymphoma allows 
# prediction of therapeutic targets. 
# Cancer Research 71(3):693{704.
#--------------------------------------------------------------------------



using Logging,SIAN


ode = @ODEmodel(
    x1'(t) = k_prod - k_deg * x1(t) - k1 * x1(t) * u(t),
    x2'(t) = -k3 * x2(t) - k_deg * x2(t) - a2 * x2(t) * x10(t) + t1 * x4(t) - a3 * x2(t) * x13(t) + t2 * x5(t) + (k1 * x1(t) - k2 * x2(t) * x8(t)) * u(t),
    x3'(t) = k3 * x2(t) - k_deg * x3(t) + k2 * x2(t) * x8(t) * u(t),
    x4'(t) = a2 * x2(t) * x10(t) - t1 * x4(t),
    x5'(t) = a3 * x2(t) * x13(t) - t2 * x5(t),
    x6'(t) = c_6a * x13(t) - a1 * x6(t) * x10(t) + t2 * x5(t) - i1 * x6(t),
    x7'(t) = i1 * kv * x6(t) - a1 * x11(t) * x7(t),
    x8'(t) = c4 * x9(t) - c5 * x8(t),
    x9'(t) = c2 + c1 * x7(t) - c3 * x9(t),
    x10'(t) = -a2 * x2(t) * x10(t) - a1 * x10(t) * x6(t) + c_4a * x12(t) - c_5a * x10(t) - i_1a * x10(t) + e_1a * x11(t),
    x11'(t) = -a1 * x11(t) * x7(t) + i_1a * kv * x10(t) - e_1a * kv * x11(t),
    x12'(t) = c_2a + c_1a * x7(t) - c_3a * x12(t),
    x13'(t) = a1 * x10(t) * x6(t) - c_6a * x13(t) - a3 * x2(t) * x13(t) + e_2a * x14(t),
    x14'(t) = a1 * x11(t) * x7(t) - e_2a * kv * x14(t),
    x15'(t) = c_2c + c_1c * x7(t) - c_3c * x15(t),
    y1(t) = x2(t),
    y2(t) = x10(t) + x13(t),
    y3(t) = x9(t),
    y4(t) = x1(t) + x2(t) + x3(t),
    y6(t) = x12(t),
    y5(t) = x7(t)
)