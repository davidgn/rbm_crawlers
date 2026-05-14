.class public final Lj3/l0;
.super Lj3/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lj3/m0;


# direct methods
.method public constructor <init>(Lj3/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/l0;->d:Lj3/m0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/net/URI;LG4/o;)Ll3/Q;
    .locals 2

    iget-object v0, p0, Lj3/l0;->d:Lj3/m0;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lj3/m0;->d:LK2/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LK2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/k0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj3/i;->g(Ljava/net/URI;LG4/o;)Ll3/Q;

    move-result-object p1

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
