.class public final LK2/h;
.super LK2/r;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:LJ2/g;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;LJ2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/h;->c:Ljava/util/Iterator;

    iput-object p2, p0, LK2/h;->d:LJ2/g;

    const/4 p1, 0x2

    iput p1, p0, LK2/h;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget v0, p0, LK2/h;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    iput v1, p0, LK2/h;->a:I

    :cond_0
    iget-object v0, p0, LK2/h;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LK2/h;->d:LJ2/g;

    invoke-interface {v1, v0}, LJ2/g;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iput v3, p0, LK2/h;->a:I

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LK2/h;->b:Ljava/lang/Object;

    iget v0, p0, LK2/h;->a:I

    if-eq v0, v3, :cond_2

    iput v2, p0, LK2/h;->a:I

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    return v2

    :cond_3
    return v4

    :cond_4
    return v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LK2/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LK2/h;->a:I

    iget-object v0, p0, LK2/h;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LK2/h;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
