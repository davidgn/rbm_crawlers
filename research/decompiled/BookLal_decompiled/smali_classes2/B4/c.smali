.class public final LB4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/e;
.implements Lt4/x0;


# instance fields
.field public final a:Lt4/f;

.field public final synthetic b:LB4/d;


# direct methods
.method public constructor <init>(LB4/d;Lt4/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB4/c;->b:LB4/d;

    iput-object p2, p0, LB4/c;->a:Lt4/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lk4/l;)V
    .locals 2

    sget-object p1, LY3/j;->a:LY3/j;

    sget-object p2, LB4/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    iget-object v1, p0, LB4/c;->b:LB4/d;

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, LB4/b;

    const/4 v0, 0x0

    invoke-direct {p2, v1, p0, v0}, LB4/b;-><init>(LB4/d;LB4/c;I)V

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v0, p1, p2}, Lt4/f;->a(Ljava/lang/Object;Lk4/l;)V

    return-void
.end method

.method public final b(Ly4/u;I)V
    .locals 1

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v0, p1, p2}, Lt4/f;->b(Ly4/u;I)V

    return-void
.end method

.method public final g(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v0, p1}, Lt4/f;->g(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final getContext()Lb4/h;
    .locals 1

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    iget-object v0, v0, Lt4/f;->e:Lb4/h;

    return-object v0
.end method

.method public final h(Ljava/lang/Object;Lk4/l;)LG3/b;
    .locals 2

    check-cast p1, LY3/j;

    new-instance p2, LB4/b;

    iget-object v0, p0, LB4/c;->b:LB4/d;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p0, v1}, LB4/b;-><init>(LB4/d;LB4/c;I)V

    iget-object v1, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v1, p1, p2}, Lt4/f;->h(Ljava/lang/Object;Lk4/l;)LG3/b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, LB4/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v0, p1}, Lt4/f;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LB4/c;->a:Lt4/f;

    invoke-virtual {v0, p1}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
