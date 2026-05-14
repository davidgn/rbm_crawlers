.class public final Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr/h;

.field public b:Lr/h;

.field public c:Lr/j;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lr/a;->d:I

    iput-object p1, p0, Lr/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static i(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/c;

    invoke-virtual {v0}, Lr/c;->clear()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    invoke-virtual {v0}, Lr/k;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast p2, Lr/c;

    iget-object p2, p2, Lr/c;->b:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    iget-object v0, v0, Lr/k;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/util/Map;
    .locals 2

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/c;

    iget v0, v0, Lr/c;->c:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    iget v0, v0, Lr/k;->c:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/c;

    invoke-virtual {v0, p1}, Lr/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    invoke-virtual {v0, p1}, Lr/k;->e(Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/c;

    invoke-virtual {v0, p1}, Lr/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    invoke-virtual {v0, p1}, Lr/k;->g(Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(I)V
    .locals 1

    iget v0, p0, Lr/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/c;

    invoke-virtual {v0, p1}, Lr/c;->j(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr/a;->e:Ljava/lang/Object;

    check-cast v0, Lr/b;

    invoke-virtual {v0, p1}, Lr/k;->j(I)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lr/a;->d()I

    move-result v0

    array-length v1, p2

    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lr/a;->b(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    aput-object p1, p2, v0

    :cond_2
    return-object p2
.end method
