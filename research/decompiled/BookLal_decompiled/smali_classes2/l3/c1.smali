.class public final Ll3/c1;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public final a:Lj3/P;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ll3/d1;


# direct methods
.method public constructor <init>(Ll3/d1;Lj3/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/c1;->c:Ll3/d1;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ll3/c1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "subchannel"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/c1;->a:Lj3/P;

    return-void
.end method


# virtual methods
.method public final c(Ll3/f1;)Lj3/N;
    .locals 2

    iget-object p1, p0, Ll3/c1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ll3/c1;->c:Ll3/d1;

    iget-object p1, p1, Ll3/d1;->c:Lj3/i;

    invoke-virtual {p1}, Lj3/i;->c()Lj3/w0;

    move-result-object p1

    new-instance v0, LA2/h;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p1, Lj3/N;->e:Lj3/N;

    return-object p1
.end method
