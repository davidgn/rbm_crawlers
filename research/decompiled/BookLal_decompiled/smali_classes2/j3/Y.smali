.class public final Lj3/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj3/X;

    check-cast p2, Lj3/X;

    invoke-virtual {p1}, Lj3/X;->c()I

    move-result p1

    invoke-virtual {p2}, Lj3/X;->c()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
