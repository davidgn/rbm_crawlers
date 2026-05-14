.class public final LZ3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ll4/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public final synthetic e:LZ3/u;


# direct methods
.method public constructor <init>(LZ3/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/t;->e:LZ3/u;

    const/4 v0, 0x2

    iput v0, p0, LZ3/t;->a:I

    iget v0, p1, LZ3/u;->d:I

    iput v0, p0, LZ3/t;->c:I

    iget p1, p1, LZ3/u;->c:I

    iput p1, p0, LZ3/t;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    iget v0, p0, LZ3/t;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    iput v1, p0, LZ3/t;->a:I

    iget v0, p0, LZ3/t;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, LZ3/t;->a:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, LZ3/t;->e:LZ3/u;

    iget-object v3, v1, LZ3/u;->a:[Ljava/lang/Object;

    iget v5, p0, LZ3/t;->d:I

    aget-object v3, v3, v5

    iput-object v3, p0, LZ3/t;->b:Ljava/lang/Object;

    iput v2, p0, LZ3/t;->a:I

    add-int/2addr v5, v2

    iget v1, v1, LZ3/u;->b:I

    rem-int/2addr v5, v1

    iput v5, p0, LZ3/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LZ3/t;->c:I

    :goto_0
    iget v0, p0, LZ3/t;->a:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    return v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LZ3/t;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, LZ3/t;->a:I

    iget-object v0, p0, LZ3/t;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
