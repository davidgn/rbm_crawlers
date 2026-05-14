.class public final Le1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/A;
.implements Lz1/e;


# static fields
.field public static final e:LJ2/e;


# instance fields
.field public final a:Lz1/h;

.field public b:Le1/A;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld3/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ld3/a;-><init>(I)V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lz1/g;->a(ILz1/d;)LJ2/e;

    move-result-object v0

    sput-object v0, Le1/z;->e:LJ2/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/z;->a:Lz1/h;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/z;->a:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le1/z;->d:Z

    iget-boolean v0, p0, Le1/z;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le1/z;->b:Le1/A;

    invoke-interface {v0}, Le1/A;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Le1/z;->b:Le1/A;

    sget-object v0, Le1/z;->e:LJ2/e;

    invoke-virtual {v0, p0}, LJ2/e;->N(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Le1/z;->b:Le1/A;

    invoke-interface {v0}, Le1/A;->b()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Le1/z;->b:Le1/A;

    invoke-interface {v0}, Le1/A;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lz1/h;
    .locals 1

    iget-object v0, p0, Le1/z;->a:Lz1/h;

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/z;->a:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    iget-boolean v0, p0, Le1/z;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le1/z;->c:Z

    iget-boolean v0, p0, Le1/z;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le1/z;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le1/z;->b:Le1/A;

    invoke-interface {v0}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
