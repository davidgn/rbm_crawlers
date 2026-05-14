.class public final Lu2/b;
.super Ld3/a;
.source "SourceFile"


# virtual methods
.method public final q(FF)F
    .locals 1

    const p2, 0x3ecccccd    # 0.4f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Lf2/a;->a(FFF)F

    move-result p1

    return p1
.end method
