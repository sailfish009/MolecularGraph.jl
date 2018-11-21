
@testset "molgraph" begin

    @testset "mapmol" begin
        sdf = GMapMol{SDFileAtom,SDFileBond}()
        vmol = vectormol(sdf)
        @test vmol isa GVectorMol{SDFileAtom,SDFileBond}
    end

    @testset "querymol" begin
        q = SMARTS()
        a = SmartsAtom(:Any => true)
        a2 = SmartsAtom(:Any => true)
        b = SmartsBond(1, 2, :Any => true)
        updateatom!(q, a, 1)
        updateatom!(q, a2, 2)
        updatebond!(q, b, 1)
        @test atomcount(q) == 2
    end
end
