.class public final Lp/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lb/d;

.field public final c:Lp/f;

.field public final d:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lb/d;Lp/f;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp/n;->a:Ljava/lang/Object;

    iput-object p1, p0, Lp/n;->b:Lb/d;

    iput-object p2, p0, Lp/n;->c:Lp/f;

    iput-object p3, p0, Lp/n;->d:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lp/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lp/n;->b:Lb/d;

    iget-object v3, p0, Lp/n;->c:Lp/f;

    check-cast v2, Lb/b;

    invoke-virtual {v2, v3, p1, v0}, Lb/b;->c(Lp/f;Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
