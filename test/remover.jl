
@testset "remover" begin

@testset "hydrogen" begin
    ethanol = parse(SMILES, "[H]C([H])([H])C([H])([H])O")
    @test atomcount(ethanol) == 8
    remove_H!(ethanol)
    @test atomcount(ethanol) == 3
end

@testset "water" begin
    CuSO4_5H2O = parse(SMILES, "[Cu2+].[O-]S(=O)(=O)[O-].O.O.O.O.O")
    remove_H!(CuSO4_5H2O)
    @test atomcount(CuSO4_5H2O) == 11
    CuSO4 = removewater(CuSO4_5H2O)
    @test atomcount(CuSO4) == 6
end

end # substructure
