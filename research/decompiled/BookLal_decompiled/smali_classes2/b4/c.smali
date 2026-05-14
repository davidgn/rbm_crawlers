.class public final Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/h;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lb4/h;

.field public final b:Lb4/f;


# direct methods
.method public constructor <init>(Lb4/h;Lb4/f;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/c;->a:Lb4/h;

    iput-object p2, p0, Lb4/c;->b:Lb4/f;

    return-void
.end method


# virtual methods
.method public final b(Lb4/g;)Lb4/h;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb4/c;->b:Lb4/f;

    invoke-interface {v0, p1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    iget-object v2, p0, Lb4/c;->a:Lb4/h;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lb4/h;->b(Lb4/g;)Lb4/h;

    move-result-object p1

    if-ne p1, v2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v1, Lb4/i;->a:Lb4/i;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lb4/c;

    invoke-direct {v1, p1, v0}, Lb4/c;-><init>(Lb4/h;Lb4/f;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lb4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Lb4/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    move-object v2, p1

    move v3, v0

    :goto_0
    iget-object v2, v2, Lb4/c;->a:Lb4/h;

    instance-of v4, v2, Lb4/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Lb4/c;

    goto :goto_1

    :cond_0
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_5

    move-object v2, p0

    :goto_2
    iget-object v2, v2, Lb4/c;->a:Lb4/h;

    instance-of v4, v2, Lb4/c;

    if-eqz v4, :cond_1

    check-cast v2, Lb4/c;

    goto :goto_3

    :cond_1
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_4

    if-ne v3, v0, :cond_7

    move-object v0, p0

    :goto_4
    iget-object v2, v0, Lb4/c;->b:Lb4/f;

    invoke-interface {v2}, Lb4/f;->getKey()Lb4/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb4/c;->f(Lb4/g;)Lb4/f;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lb4/c;->a:Lb4/h;

    instance-of v2, v0, Lb4/c;

    if-eqz v2, :cond_3

    check-cast v0, Lb4/c;

    goto :goto_4

    :cond_3
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lb4/f;

    invoke-interface {v0}, Lb4/f;->getKey()Lb4/g;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb4/c;->f(Lb4/g;)Lb4/f;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_7

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public final f(Lb4/g;)Lb4/f;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lb4/c;->b:Lb4/f;

    invoke-interface {v1, p1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb4/c;->a:Lb4/h;

    instance-of v1, v0, Lb4/c;

    if-eqz v1, :cond_1

    check-cast v0, Lb4/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lb4/c;->a:Lb4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lb4/c;->b:Lb4/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb4/c;->a:Lb4/h;

    invoke-interface {v0, p1, p2}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lb4/c;->b:Lb4/f;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lb4/h;)Lb4/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb4/i;->a:Lb4/i;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lb4/b;->c:Lb4/b;

    invoke-interface {p1, p0, v0}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb4/h;

    :goto_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lb4/b;->b:Lb4/b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lb4/c;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
