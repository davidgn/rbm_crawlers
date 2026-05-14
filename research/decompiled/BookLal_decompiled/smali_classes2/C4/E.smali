.class public final LC4/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP1/e;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/io/Serializable;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LC4/E;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LC4/E;->f:Ljava/lang/Object;

    .line 26
    const-string v0, "GET"

    iput-object v0, p0, LC4/E;->b:Ljava/io/Serializable;

    .line 27
    new-instance v0, LC4/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC4/v;-><init>(I)V

    iput-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LS1/j;Ljava/lang/String;LP1/b;LP1/d;LS1/s;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LC4/E;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LC4/E;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LC4/E;->b:Ljava/io/Serializable;

    .line 5
    iput-object p3, p0, LC4/E;->d:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, LC4/E;->e:Ljava/lang/Object;

    .line 7
    iput-object p5, p0, LC4/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC4/E;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, LC4/E;->b:Ljava/io/Serializable;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p2, p0, LC4/E;->c:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, LC4/E;->d:Ljava/lang/Object;

    .line 14
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iput-object p4, p0, LC4/E;->e:Ljava/lang/Object;

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iput-object p1, p0, LC4/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu0/w;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, LC4/E;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, LL/c;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, LL/c;-><init>(I)V

    iput-object v0, p0, LC4/E;->c:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC4/E;->b:Ljava/io/Serializable;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, LC4/E;->e:Ljava/lang/Object;

    .line 23
    new-instance p1, Li1/D;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Li1/D;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, LC4/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput p1, p0, LC4/E;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0, p1, p2}, LC4/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()LC4/F;
    .locals 7

    iget-object v0, p0, LC4/E;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LC4/y;

    if-eqz v2, :cond_1

    iget-object v0, p0, LC4/E;->b:Ljava/io/Serializable;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0}, LC4/v;->e()LC4/w;

    move-result-object v4

    iget-object v0, p0, LC4/E;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LC4/G;

    iget-object v0, p0, LC4/E;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    sget-object v1, LD4/c;->a:[B

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LZ3/q;->a:LZ3/q;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "{\n    Collections.unmodi\u2026(LinkedHashMap(this))\n  }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, LC4/F;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LC4/F;-><init>(LC4/y;Ljava/lang/String;LC4/w;LC4/G;Ljava/util/Map;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Z
    .locals 8

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu0/a;

    iget v5, v4, Lu0/a;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Lu0/a;->c:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, LC4/E;->g(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v7

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Lu0/a;->b:I

    iget v4, v4, Lu0/a;->c:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, LC4/E;->g(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public d()V
    .locals 8

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/a;

    iget-object v4, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v4, Lu0/w;

    invoke-virtual {v4, v3}, Lu0/w;->a(Lu0/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LC4/E;->m(Ljava/util/ArrayList;)V

    iget-object v0, p0, LC4/E;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/a;

    iget v4, v3, Lu0/a;->a:I

    const/4 v5, 0x1

    iget-object v6, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v6, Lu0/w;

    if-eq v4, v5, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v3}, Lu0/w;->a(Lu0/a;)V

    iget v4, v3, Lu0/a;->b:I

    iget v3, v3, Lu0/a;->c:I

    invoke-virtual {v6, v4, v3}, Lu0/w;->e(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v3}, Lu0/w;->a(Lu0/a;)V

    iget v4, v3, Lu0/a;->b:I

    iget v3, v3, Lu0/a;->c:I

    invoke-virtual {v6, v4, v3}, Lu0/w;->c(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v3}, Lu0/w;->a(Lu0/a;)V

    iget v4, v3, Lu0/a;->b:I

    iget v3, v3, Lu0/a;->c:I

    iget-object v6, v6, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v4, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->P(IIZ)V

    iput-boolean v5, v6, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget v5, v4, Lu0/S;->c:I

    add-int/2addr v5, v3

    iput v5, v4, Lu0/S;->c:I

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v3}, Lu0/w;->a(Lu0/a;)V

    iget v4, v3, Lu0/a;->b:I

    iget v3, v3, Lu0/a;->c:I

    invoke-virtual {v6, v4, v3}, Lu0/w;->d(II)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, LC4/E;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public e(Lu0/a;)V
    .locals 11

    iget v0, p1, Lu0/a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget v2, p1, Lu0/a;->b:I

    invoke-virtual {p0, v2, v0}, LC4/E;->o(II)I

    move-result v0

    iget v2, p1, Lu0/a;->b:I

    iget v3, p1, Lu0/a;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v6, v1

    move v7, v6

    :goto_1
    iget v8, p1, Lu0/a;->c:I

    if-ge v6, v8, :cond_6

    iget v8, p1, Lu0/a;->b:I

    mul-int v9, v3, v6

    add-int/2addr v9, v8

    iget v8, p1, Lu0/a;->a:I

    invoke-virtual {p0, v9, v8}, LC4/E;->o(II)I

    move-result v8

    iget v9, p1, Lu0/a;->a:I

    if-eq v9, v4, :cond_3

    if-eq v9, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-ne v8, v10, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v0, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0, v9, v0, v7}, LC4/E;->k(III)Lu0/a;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, LC4/E;->f(Lu0/a;I)V

    iget-object v9, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v9, LL/c;

    invoke-virtual {v9, v0}, LL/c;->c(Ljava/lang/Object;)Z

    iget v0, p1, Lu0/a;->a:I

    if-ne v0, v5, :cond_5

    add-int/2addr v2, v7

    :cond_5
    move v7, v1

    move v0, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v1, LL/c;

    invoke-virtual {v1, p1}, LL/c;->c(Ljava/lang/Object;)Z

    if-lez v7, :cond_7

    iget p1, p1, Lu0/a;->a:I

    invoke-virtual {p0, p1, v0, v7}, LC4/E;->k(III)Lu0/a;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, LC4/E;->f(Lu0/a;I)V

    iget-object v0, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v0, LL/c;

    invoke-virtual {v0, p1}, LL/c;->c(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lu0/a;I)V
    .locals 3

    iget-object v0, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v0, Lu0/w;

    invoke-virtual {v0, p1}, Lu0/w;->a(Lu0/a;)V

    iget v1, p1, Lu0/a;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v0, p2, p1}, Lu0/w;->c(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p1, Lu0/a;->c:I

    iget-object v0, v0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->P(IIZ)V

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget v0, p2, Lu0/S;->c:I

    add-int/2addr v0, p1

    iput v0, p2, Lu0/S;->c:I

    :goto_0
    return-void
.end method

.method public g(II)I
    .locals 6

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/a;

    iget v3, v2, Lu0/a;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, Lu0/a;->b:I

    if-ne v3, p1, :cond_0

    iget p1, v2, Lu0/a;->c:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v2, v2, Lu0/a;->c:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v4, v2, Lu0/a;->b:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v2, v2, Lu0/a;->c:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v2, v2, Lu0/a;->c:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, LC4/E;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LL4/d;->e(Ljava/lang/String;)V

    invoke-static {p2, p1}, LL4/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LC4/v;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, LC4/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;LC4/G;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "method "

    if-nez p2, :cond_1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PROPPATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "REPORT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, " must have a request body."

    invoke-static {v0, p1, p2}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p1}, LW2/B;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-object p1, p0, LC4/E;->b:Ljava/io/Serializable;

    iput-object p2, p0, LC4/E;->e:Ljava/lang/Object;

    return-void

    :cond_2
    const-string p2, " must not have a request body."

    invoke-static {v0, p1, p2}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(III)Lu0/a;
    .locals 1

    iget-object v0, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v0, LL/c;

    invoke-virtual {v0}, LL/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/a;

    if-nez v0, :cond_0

    new-instance v0, Lu0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lu0/a;->a:I

    iput p2, v0, Lu0/a;->b:I

    iput p3, v0, Lu0/a;->c:I

    goto :goto_0

    :cond_0
    iput p1, v0, Lu0/a;->a:I

    iput p2, v0, Lu0/a;->b:I

    iput p3, v0, Lu0/a;->c:I

    :goto_0
    return-object v0
.end method

.method public l(Lu0/a;)V
    .locals 4

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lu0/a;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v2, Lu0/w;

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v2, v0, p1}, Lu0/w;->e(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v2, v0, p1}, Lu0/w;->c(II)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    iget-object v2, v2, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->P(IIZ)V

    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    goto :goto_0

    :cond_3
    iget v0, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v2, v0, p1}, Lu0/w;->d(II)V

    :goto_0
    return-void
.end method

.method public m(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v3, LL/c;

    invoke-virtual {v3, v2}, LL/c;->c(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public n(LP1/a;)V
    .locals 9

    new-instance v0, LD4/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    iget-object v1, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v1, LS1/j;

    iget-object v2, p0, LC4/E;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v3, LP1/d;

    iget-object v4, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v4, LP1/b;

    iget-object v5, p0, LC4/E;->f:Ljava/lang/Object;

    check-cast v5, LS1/s;

    sget-object v6, LP1/c;->a:LP1/c;

    invoke-static {}, LS1/j;->a()LJ2/e;

    move-result-object v7

    iget-object v8, v1, LS1/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, LJ2/e;->Q(Ljava/lang/String;)V

    iput-object v6, v7, LJ2/e;->d:Ljava/lang/Object;

    iget-object v1, v1, LS1/j;->b:[B

    iput-object v1, v7, LJ2/e;->c:Ljava/lang/Object;

    invoke-virtual {v7}, LJ2/e;->j()LS1/j;

    move-result-object v1

    new-instance v6, LC4/F;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, LC4/F;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, LC4/F;->g:Ljava/lang/Object;

    iget-object v7, v5, LS1/s;->a:Lb2/a;

    invoke-interface {v7}, Lb2/a;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, LC4/F;->e:Ljava/lang/Object;

    iget-object v7, v5, LS1/s;->b:Lb2/a;

    invoke-interface {v7}, Lb2/a;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, LC4/F;->f:Ljava/lang/Object;

    iput-object v2, v6, LC4/F;->b:Ljava/io/Serializable;

    new-instance v2, LS1/l;

    iget-object p1, p1, LP1/a;->a:Ljava/lang/Object;

    invoke-interface {v3, p1}, LP1/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v2, v4, p1}, LS1/l;-><init>(LP1/b;[B)V

    iput-object v2, v6, LC4/F;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v6, LC4/F;->c:Ljava/lang/Object;

    invoke-virtual {v6}, LC4/F;->c()LS1/i;

    move-result-object p1

    iget-object v2, v5, LS1/s;->c:LX1/e;

    check-cast v2, LX1/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LX1/a;

    invoke-direct {v3, v2, v1, v0, p1}, LX1/a;-><init>(LX1/c;LS1/j;LD4/a;LS1/i;)V

    iget-object p1, v2, LX1/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(II)I
    .locals 9

    iget-object v0, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu0/a;

    iget v5, v4, Lu0/a;->a:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    iget v3, v4, Lu0/a;->b:I

    iget v5, v4, Lu0/a;->c:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lu0/a;->c:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lu0/a;->c:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lu0/a;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lu0/a;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lu0/a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lu0/a;->c:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lu0/a;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lu0/a;->c:I

    goto :goto_4

    :cond_8
    iget v3, v4, Lu0/a;->b:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    iget v3, v4, Lu0/a;->c:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    iget v3, v4, Lu0/a;->c:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lu0/a;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lu0/a;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/a;

    iget v2, v1, Lu0/a;->a:I

    if-ne v2, v3, :cond_f

    iget v2, v1, Lu0/a;->c:I

    iget v4, v1, Lu0/a;->b:I

    if-eq v2, v4, :cond_e

    if-gez v2, :cond_10

    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v2, LL/c;

    invoke-virtual {v2, v1}, LL/c;->c(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v2, v1, Lu0/a;->c:I

    if-gtz v2, :cond_10

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v2, LL/c;

    invoke-virtual {v2, v1}, LL/c;->c(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    invoke-static {p1, v0, v1}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LC4/x;

    invoke-direct {v0}, LC4/x;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, LC4/x;->c(LC4/y;Ljava/lang/String;)V

    invoke-virtual {v0}, LC4/x;->a()LC4/y;

    move-result-object p1

    iput-object p1, p0, LC4/E;->c:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LC4/E;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FontRequest {mProviderAuthority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LC4/E;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mProviderPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LC4/E;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LC4/E;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCertificates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LC4/E;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, " \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}mCertificatesArray: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
