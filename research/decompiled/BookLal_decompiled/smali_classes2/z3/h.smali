.class public abstract Lz3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/k;


# direct methods
.method public static a(Ljava/lang/Object;)LL3/o;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LL3/o;

    invoke-direct {v0, p0}, LL3/o;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lz3/j;)V
    .locals 2

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lz3/h;->c(Lz3/j;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public abstract c(Lz3/j;)V
.end method
