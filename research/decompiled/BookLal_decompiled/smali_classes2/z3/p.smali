.class public abstract Lz3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method


# virtual methods
.method public abstract a()Lz3/o;
.end method

.method public b(Ljava/lang/Runnable;)LB3/b;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lz3/p;->c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 2

    invoke-virtual {p0}, Lz3/p;->a()Lz3/o;

    move-result-object v0

    new-instance v1, Lz3/n;

    invoke-direct {v1, p1, v0}, Lz3/n;-><init>(Ljava/lang/Runnable;Lz3/o;)V

    invoke-virtual {v0, v1, p2}, Lz3/o;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;

    return-object v1
.end method
