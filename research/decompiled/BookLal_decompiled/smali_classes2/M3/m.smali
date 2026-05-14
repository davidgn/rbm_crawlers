.class public final LM3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/c;


# instance fields
.field public final a:Lz3/m;

.field public final b:Ljava/util/Iterator;

.field public volatile c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lz3/m;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/m;->a:Lz3/m;

    iput-object p2, p0, LM3/m;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/m;->c:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/m;->e:Z

    return-void
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LM3/m;->d:Z

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-boolean v0, p0, LM3/m;->e:Z

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, LM3/m;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, LM3/m;->f:Z

    iget-object v2, p0, LM3/m;->b:Ljava/util/Iterator;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, LM3/m;->e:Z

    return-object v1

    :cond_1
    iput-boolean v3, p0, LM3/m;->f:Z

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
