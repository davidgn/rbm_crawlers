.class public abstract Ll3/X;
.super Lj3/V;
.source "SourceFile"


# instance fields
.field public final a:Ll3/L0;


# direct methods
.method public constructor <init>(Ll3/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/X;->a:Ll3/L0;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->t:Lj3/h;

    invoke-virtual {v0}, Lj3/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->t:Lj3/h;

    invoke-virtual {v0, p1, p2}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->i()V

    return-void
.end method

.method public final j()Lj3/q;
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->j()Lj3/q;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V
    .locals 1

    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    invoke-virtual {v0, p1, p2}, Ll3/L0;->k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget-object v1, p0, Ll3/X;->a:Ll3/L0;

    const-string v2, "delegate"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
