.class public Lr/b;
.super Lr/k;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public m:Lr/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr/k;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lr/d;->a:[I

    iput-object p1, p0, Lr/k;->a:[I

    .line 4
    sget-object p1, Lr/d;->b:[Ljava/lang/Object;

    iput-object p1, p0, Lr/k;->b:[Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lr/k;->a(I)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lr/k;->c:I

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lr/b;->m:Lr/a;

    if-nez v0, :cond_0

    new-instance v0, Lr/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lr/b;->m:Lr/a;

    :cond_0
    iget-object v0, p0, Lr/b;->m:Lr/a;

    iget-object v1, v0, Lr/a;->a:Lr/h;

    if-nez v1, :cond_1

    new-instance v1, Lr/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lr/h;-><init>(Lr/a;I)V

    iput-object v1, v0, Lr/a;->a:Lr/h;

    :cond_1
    iget-object v0, v0, Lr/a;->a:Lr/h;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lr/b;->m:Lr/a;

    if-nez v0, :cond_0

    new-instance v0, Lr/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lr/b;->m:Lr/a;

    :cond_0
    iget-object v0, p0, Lr/b;->m:Lr/a;

    iget-object v1, v0, Lr/a;->b:Lr/h;

    if-nez v1, :cond_1

    new-instance v1, Lr/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lr/h;-><init>(Lr/a;I)V

    iput-object v1, v0, Lr/a;->b:Lr/h;

    :cond_1
    iget-object v0, v0, Lr/a;->b:Lr/h;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lr/k;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lr/k;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lr/b;->m:Lr/a;

    if-nez v0, :cond_0

    new-instance v0, Lr/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lr/b;->m:Lr/a;

    :cond_0
    iget-object v0, p0, Lr/b;->m:Lr/a;

    iget-object v1, v0, Lr/a;->c:Lr/j;

    if-nez v1, :cond_1

    new-instance v1, Lr/j;

    invoke-direct {v1, v0}, Lr/j;-><init>(Lr/a;)V

    iput-object v1, v0, Lr/a;->c:Lr/j;

    :cond_1
    iget-object v0, v0, Lr/a;->c:Lr/j;

    return-object v0
.end method
