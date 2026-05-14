.class public final LK2/l;
.super LK2/g;
.source "SourceFile"


# instance fields
.field public final transient d:LK2/o;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public constructor <init>(LK2/o;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, LK2/l;->d:LK2/o;

    iput-object p2, p0, LK2/l;->e:[Ljava/lang/Object;

    iput p3, p0, LK2/l;->f:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LK2/g;->b:LK2/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LK2/l;->o()LK2/e;

    move-result-object v0

    iput-object v0, p0, LK2/g;->b:LK2/e;

    :cond_0
    invoke-virtual {v0, p1}, LK2/e;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, LK2/l;->d:LK2/o;

    invoke-virtual {v2, v0}, LK2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, LK2/g;->b:LK2/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LK2/l;->o()LK2/e;

    move-result-object v0

    iput-object v0, p0, LK2/g;->b:LK2/e;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK2/e;->m(I)LK2/c;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()LK2/e;
    .locals 1

    new-instance v0, LK2/k;

    invoke-direct {v0, p0}, LK2/k;-><init>(LK2/l;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LK2/l;->f:I

    return v0
.end method
