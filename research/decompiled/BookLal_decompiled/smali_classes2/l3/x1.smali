.class public final Ll3/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/Collection;

.field public final d:Ljava/util/Collection;

.field public final e:I

.field public final f:Ll3/z1;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/x1;->b:Ljava/util/List;

    const-string v0, "drainedSubstreams"

    invoke-static {p2, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ll3/x1;->c:Ljava/util/Collection;

    iput-object p4, p0, Ll3/x1;->f:Ll3/z1;

    iput-object p3, p0, Ll3/x1;->d:Ljava/util/Collection;

    iput-boolean p5, p0, Ll3/x1;->g:Z

    iput-boolean p6, p0, Ll3/x1;->a:Z

    iput-boolean p7, p0, Ll3/x1;->h:Z

    iput p8, p0, Ll3/x1;->e:I

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p7

    :goto_1
    const-string p8, "passThrough should imply buffer is null"

    invoke-static {p1, p8}, LZ2/l;->m(ZLjava/lang/String;)V

    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, p7

    :goto_3
    const-string p8, "passThrough should imply winningSubstream != null"

    invoke-static {p1, p8}, LZ2/l;->m(ZLjava/lang/String;)V

    if-eqz p6, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, p7, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p4, Ll3/z1;->b:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move p1, p3

    goto :goto_5

    :cond_6
    :goto_4
    move p1, p7

    :goto_5
    const-string p2, "passThrough should imply winningSubstream is drained"

    invoke-static {p1, p2}, LZ2/l;->m(ZLjava/lang/String;)V

    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    move p3, p7

    :cond_8
    const-string p1, "cancelled should imply committed"

    invoke-static {p3, p1}, LZ2/l;->m(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)Ll3/x1;
    .locals 11

    iget-boolean v0, p0, Ll3/x1;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "hedging frozen"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/x1;->f:Ll3/z1;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "already committed"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/x1;->d:Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget p1, p0, Ll3/x1;->e:I

    add-int/lit8 v10, p1, 0x1

    new-instance p1, Ll3/x1;

    iget-object v6, p0, Ll3/x1;->f:Ll3/z1;

    iget-boolean v7, p0, Ll3/x1;->g:Z

    iget-object v3, p0, Ll3/x1;->b:Ljava/util/List;

    iget-object v4, p0, Ll3/x1;->c:Ljava/util/Collection;

    iget-boolean v8, p0, Ll3/x1;->a:Z

    iget-boolean v9, p0, Ll3/x1;->h:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    return-object p1
.end method

.method public final b(Ll3/z1;)Ll3/x1;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll3/x1;->d:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    new-instance p1, Ll3/x1;

    iget-boolean v7, p0, Ll3/x1;->g:Z

    iget-boolean v8, p0, Ll3/x1;->a:Z

    iget-object v3, p0, Ll3/x1;->b:Ljava/util/List;

    iget-object v4, p0, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v6, p0, Ll3/x1;->f:Ll3/z1;

    iget-boolean v9, p0, Ll3/x1;->h:Z

    iget v10, p0, Ll3/x1;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    return-object p1
.end method

.method public final c(Ll3/z1;Ll3/z1;)Ll3/x1;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll3/x1;->d:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    new-instance p1, Ll3/x1;

    iget-boolean v7, p0, Ll3/x1;->g:Z

    iget-boolean v8, p0, Ll3/x1;->a:Z

    iget-object v3, p0, Ll3/x1;->b:Ljava/util/List;

    iget-object v4, p0, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v6, p0, Ll3/x1;->f:Ll3/z1;

    iget-boolean v9, p0, Ll3/x1;->h:Z

    iget v10, p0, Ll3/x1;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    return-object p1
.end method

.method public final d(Ll3/z1;)Ll3/x1;
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p1, Ll3/z1;->b:Z

    iget-object v0, p0, Ll3/x1;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    new-instance p1, Ll3/x1;

    iget-boolean v7, p0, Ll3/x1;->g:Z

    iget-boolean v8, p0, Ll3/x1;->a:Z

    iget-object v3, p0, Ll3/x1;->b:Ljava/util/List;

    iget-object v5, p0, Ll3/x1;->d:Ljava/util/Collection;

    iget-object v6, p0, Ll3/x1;->f:Ll3/z1;

    iget-boolean v9, p0, Ll3/x1;->h:Z

    iget v10, p0, Ll3/x1;->e:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final e(Ll3/z1;)Ll3/x1;
    .locals 12

    iget-boolean v0, p0, Ll3/x1;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already passThrough"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p1, Ll3/z1;->b:Z

    iget-object v2, p0, Ll3/x1;->c:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iget-object v2, p0, Ll3/x1;->f:Ll3/z1;

    if-eqz v2, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v0

    :goto_2
    if-eqz v9, :cond_4

    if-ne v2, p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    const-string p1, "Another RPC attempt has already committed"

    invoke-static {v1, p1}, LZ2/l;->m(ZLjava/lang/String;)V

    const/4 p1, 0x0

    :goto_4
    move-object v4, p1

    goto :goto_5

    :cond_4
    iget-object p1, p0, Ll3/x1;->b:Ljava/util/List;

    goto :goto_4

    :goto_5
    new-instance p1, Ll3/x1;

    iget-object v7, p0, Ll3/x1;->f:Ll3/z1;

    iget-boolean v8, p0, Ll3/x1;->g:Z

    iget-object v6, p0, Ll3/x1;->d:Ljava/util/Collection;

    iget-boolean v10, p0, Ll3/x1;->h:Z

    iget v11, p0, Ll3/x1;->e:I

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    return-object p1
.end method
