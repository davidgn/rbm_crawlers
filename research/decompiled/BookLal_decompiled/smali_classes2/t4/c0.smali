.class public final Lt4/c0;
.super Lt4/a0;
.source "SourceFile"


# instance fields
.field public final e:Lt4/g0;

.field public final f:Lt4/d0;

.field public final l:Lt4/j;

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lt4/g0;Lt4/d0;Lt4/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ly4/k;-><init>()V

    iput-object p1, p0, Lt4/c0;->e:Lt4/g0;

    iput-object p2, p0, Lt4/c0;->f:Lt4/d0;

    iput-object p3, p0, Lt4/c0;->l:Lt4/j;

    iput-object p4, p0, Lt4/c0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/c0;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 7

    iget-object p1, p0, Lt4/c0;->l:Lt4/j;

    iget-object v0, p0, Lt4/c0;->e:Lt4/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lt4/g0;->J(Ly4/k;)Lt4/j;

    move-result-object p1

    iget-object v1, p0, Lt4/c0;->f:Lt4/d0;

    iget-object v2, p0, Lt4/c0;->m:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v3, p1, Lt4/j;->e:Lt4/g0;

    new-instance v4, Lt4/c0;

    invoke-direct {v4, v0, v1, p1, v2}, Lt4/c0;-><init>(Lt4/g0;Lt4/d0;Lt4/j;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Lt4/w;->i(Lt4/W;ZLt4/a0;I)Lt4/G;

    move-result-object v3

    sget-object v4, Lt4/k0;->a:Lt4/k0;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lt4/g0;->J(Ly4/k;)Lt4/j;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Lt4/g0;->u(Lt4/d0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt4/g0;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
