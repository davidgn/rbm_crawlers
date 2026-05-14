.class public final Lm/b;
.super LZ2/l;
.source "SourceFile"


# static fields
.field public static volatile c:Lm/b;

.field public static final d:Lm/a;


# instance fields
.field public final b:Lm/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/a;-><init>(I)V

    sput-object v0, Lm/b;->d:Lm/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/d;

    invoke-direct {v0}, Lm/d;-><init>()V

    iput-object v0, p0, Lm/b;->b:Lm/d;

    return-void
.end method

.method public static Y()Lm/b;
    .locals 2

    sget-object v0, Lm/b;->c:Lm/b;

    if-eqz v0, :cond_0

    sget-object v0, Lm/b;->c:Lm/b;

    return-object v0

    :cond_0
    const-class v0, Lm/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm/b;->c:Lm/b;

    if-nez v1, :cond_1

    new-instance v1, Lm/b;

    invoke-direct {v1}, Lm/b;-><init>()V

    sput-object v1, Lm/b;->c:Lm/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lm/b;->c:Lm/b;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
