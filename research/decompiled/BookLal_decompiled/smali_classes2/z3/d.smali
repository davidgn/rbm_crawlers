.class public abstract Lz3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT4/a;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lz3/d;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lz3/g;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lz3/d;->d(Lz3/g;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQ3/d;

    invoke-direct {v0, p1}, LQ3/d;-><init>(Lz3/g;)V

    invoke-virtual {p0, v0}, Lz3/d;->d(Lz3/g;)V

    :goto_0
    return-void
.end method

.method public final b(LE3/c;)LK3/B;
    .locals 2

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxConcurrency"

    const v1, 0x7fffffff

    invoke-static {v1, v0}, LG3/d;->b(ILjava/lang/String;)V

    new-instance v0, LK3/B;

    invoke-direct {v0, p0, p1}, LK3/B;-><init>(Lz3/d;LE3/c;)V

    return-object v0
.end method

.method public final c()LK3/Q;
    .locals 4

    sget v0, Lz3/d;->a:I

    const-string v1, "bufferSize"

    invoke-static {v0, v1}, LG3/d;->b(ILjava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, LK3/N;

    invoke-direct {v2, v1, v0}, LK3/N;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    new-instance v3, LK3/Q;

    invoke-direct {v3, v2, p0, v1, v0}, LK3/Q;-><init>(LK3/N;Lz3/d;Ljava/util/concurrent/atomic/AtomicReference;I)V

    return-object v3
.end method

.method public final d(Lz3/g;)V
    .locals 2

    const-string v0, "s is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lz3/d;->e(Lz3/g;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public abstract e(Lz3/g;)V
.end method
