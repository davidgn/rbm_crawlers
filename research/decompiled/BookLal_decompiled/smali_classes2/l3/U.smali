.class public final Ll3/U;
.super Ll3/Z0;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lj3/r0;

.field public final d:Ll3/t;

.field public final e:[Lj3/B;


# direct methods
.method public constructor <init>(Lj3/r0;Ll3/t;[Lj3/B;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    .line 3
    iput-object p1, p0, Ll3/U;->c:Lj3/r0;

    .line 4
    iput-object p2, p0, Ll3/U;->d:Ll3/t;

    .line 5
    iput-object p3, p0, Ll3/U;->e:[Lj3/B;

    return-void
.end method

.method public constructor <init>(Lj3/r0;[Lj3/B;)V
    .locals 1

    .line 6
    sget-object v0, Ll3/t;->a:Ll3/t;

    invoke-direct {p0, p1, v0, p2}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    return-void
.end method


# virtual methods
.method public final g(Ll3/u;)V
    .locals 5

    iget-boolean v0, p0, Ll3/U;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-boolean v1, p0, Ll3/U;->b:Z

    iget-object v0, p0, Ll3/U;->e:[Lj3/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ll3/U;->c:Lj3/r0;

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Lj3/B;->g(Lj3/r0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ll3/U;->d:Ll3/t;

    invoke-interface {p1, v3, v1, v0}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void
.end method

.method public final n(LC4/v;)V
    .locals 2

    const-string v0, "error"

    iget-object v1, p0, Ll3/U;->c:Lj3/r0;

    invoke-virtual {p1, v1, v0}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    iget-object v1, p0, Ll3/U;->d:Ll3/t;

    invoke-virtual {p1, v1, v0}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
