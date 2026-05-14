.class public final LK3/p;
.super LK3/a;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/firebase/inappmessaging/internal/k;

.field public final d:Lz2/e;

.field public final e:Ly3/c;

.field public final f:Ly3/c;


# direct methods
.method public constructor <init>(Lz3/d;Lcom/google/firebase/inappmessaging/internal/k;)V
    .locals 2

    sget-object v0, LG3/d;->d:Lz2/e;

    sget-object v1, LG3/d;->c:Ly3/c;

    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    iput-object p2, p0, LK3/p;->c:Lcom/google/firebase/inappmessaging/internal/k;

    iput-object v0, p0, LK3/p;->d:Lz2/e;

    iput-object v1, p0, LK3/p;->e:Ly3/c;

    iput-object v1, p0, LK3/p;->f:Ly3/c;

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 14

    instance-of v0, p1, LH3/a;

    iget-object v1, p0, LK3/a;->b:Lz3/d;

    if-eqz v0, :cond_0

    new-instance v0, LK3/n;

    move-object v3, p1

    check-cast v3, LH3/a;

    iget-object v4, p0, LK3/p;->c:Lcom/google/firebase/inappmessaging/internal/k;

    iget-object v5, p0, LK3/p;->d:Lz2/e;

    iget-object v6, p0, LK3/p;->e:Ly3/c;

    iget-object v7, p0, LK3/p;->f:Ly3/c;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LK3/n;-><init>(LH3/a;Lcom/google/firebase/inappmessaging/internal/k;Lz2/e;Ly3/c;Ly3/c;)V

    invoke-virtual {v1, v0}, Lz3/d;->d(Lz3/g;)V

    goto :goto_0

    :cond_0
    new-instance v0, LK3/o;

    iget-object v10, p0, LK3/p;->c:Lcom/google/firebase/inappmessaging/internal/k;

    iget-object v11, p0, LK3/p;->d:Lz2/e;

    iget-object v12, p0, LK3/p;->e:Ly3/c;

    iget-object v13, p0, LK3/p;->f:Ly3/c;

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, LK3/o;-><init>(Lz3/g;Lcom/google/firebase/inappmessaging/internal/k;Lz2/e;Ly3/c;Ly3/c;)V

    invoke-virtual {v1, v0}, Lz3/d;->d(Lz3/g;)V

    :goto_0
    return-void
.end method
