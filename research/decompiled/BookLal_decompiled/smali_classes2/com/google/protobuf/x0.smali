.class public final Lcom/google/protobuf/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/J0;


# instance fields
.field public final a:Lcom/google/protobuf/t0;

.field public final b:Lcom/google/protobuf/W0;

.field public final c:Lcom/google/protobuf/z;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/W0;Lcom/google/protobuf/z;Lcom/google/protobuf/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/x0;->c:Lcom/google/protobuf/z;

    iput-object p3, p0, Lcom/google/protobuf/x0;->a:Lcom/google/protobuf/t0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/protobuf/l0;)V
    .locals 0

    iget-object p2, p0, Lcom/google/protobuf/x0;->c:Lcom/google/protobuf/z;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/K0;->B(Lcom/google/protobuf/W0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;LS3/g;Lcom/google/protobuf/y;)V
    .locals 0

    iget-object p2, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/W0;->a(Ljava/lang/Object;)Lcom/google/protobuf/V0;

    iget-object p2, p0, Lcom/google/protobuf/x0;->c:Lcom/google/protobuf/z;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/W0;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/x0;->c:Lcom/google/protobuf/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x0;->c:Lcom/google/protobuf/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Lcom/google/protobuf/K;)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    invoke-virtual {p1}, Lcom/google/protobuf/V0;->hashCode()I

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/protobuf/K;)I
    .locals 7

    iget-object v0, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    iget v0, p1, Lcom/google/protobuf/V0;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/google/protobuf/V0;->a:I

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/google/protobuf/V0;->b:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    ushr-int/2addr v2, v3

    iget-object v4, p1, Lcom/google/protobuf/V0;->c:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Lcom/google/protobuf/m;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/google/protobuf/u;->r0(I)I

    move-result v5

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    invoke-static {v6, v2}, Lcom/google/protobuf/u;->s0(II)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v3, v4}, Lcom/google/protobuf/u;->a0(ILcom/google/protobuf/m;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Lcom/google/protobuf/V0;->d:I

    move v0, v1

    :goto_1
    return v0
.end method

.method public final h(Ljava/lang/Object;[BIILQ1/d;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/K;

    iget-object p3, p2, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    sget-object p4, Lcom/google/protobuf/V0;->f:Lcom/google/protobuf/V0;

    if-ne p3, p4, :cond_0

    new-instance p3, Lcom/google/protobuf/V0;

    invoke-direct {p3}, Lcom/google/protobuf/V0;-><init>()V

    iput-object p3, p2, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final i(Lcom/google/protobuf/K;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/x0;->b:Lcom/google/protobuf/W0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    check-cast p2, Lcom/google/protobuf/K;

    iget-object p2, p2, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/V0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/x0;->a:Lcom/google/protobuf/t0;

    instance-of v1, v0, Lcom/google/protobuf/K;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->newMutableInstance()Lcom/google/protobuf/K;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/t0;->newBuilderForType()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/s0;->buildPartial()Lcom/google/protobuf/t0;

    move-result-object v0

    return-object v0
.end method
