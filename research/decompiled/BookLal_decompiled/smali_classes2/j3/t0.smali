.class public final Lj3/t0;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lj3/r0;

.field public final b:Lj3/f0;

.field public final c:Z


# direct methods
.method public constructor <init>(Lj3/r0;Lj3/f0;)V
    .locals 2

    invoke-static {p1}, Lj3/r0;->c(Lj3/r0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lj3/r0;->c:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lj3/t0;->a:Lj3/r0;

    iput-object p2, p0, Lj3/t0;->b:Lj3/f0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj3/t0;->c:Z

    invoke-virtual {p0}, Lj3/t0;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lj3/t0;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
