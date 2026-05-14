.class public abstract Lj3/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lj3/a;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a;

    const-string v1, "internal:health-checking-config"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj3/S;->b:Lj3/a;

    return-void
.end method


# virtual methods
.method public a(Lj3/O;)Z
    .locals 5

    iget-object v0, p1, Lj3/O;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj3/S;->b()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lj3/O;->b:Lj3/b;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj3/S;->c(Lj3/r0;)V

    return v2

    :cond_0
    iget v0, p0, Lj3/S;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj3/S;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lj3/S;->d(Lj3/O;)V

    :cond_1
    iput v2, p0, Lj3/S;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(Lj3/r0;)V
.end method

.method public d(Lj3/O;)V
    .locals 2

    iget v0, p0, Lj3/S;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj3/S;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lj3/S;->a(Lj3/O;)Z

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lj3/S;->a:I

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f()V
.end method
