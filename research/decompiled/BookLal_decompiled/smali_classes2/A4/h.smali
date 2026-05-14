.class public abstract LA4/h;
.super Lt4/P;
.source "SourceFile"


# instance fields
.field public c:LA4/c;


# virtual methods
.method public final q(Lb4/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, LA4/h;->c:LA4/c;

    sget-object v0, LA4/c;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v0, LA4/k;->g:Landroidx/work/n;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, LA4/c;->c(Ljava/lang/Runnable;Landroidx/work/n;Z)V

    return-void
.end method
