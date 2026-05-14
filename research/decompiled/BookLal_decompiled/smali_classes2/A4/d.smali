.class public final LA4/d;
.super Lt4/P;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:LA4/d;

.field public static final d:Lt4/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LA4/d;

    invoke-direct {v0}, Lt4/s;-><init>()V

    sput-object v0, LA4/d;->c:LA4/d;

    sget-object v0, LA4/l;->c:LA4/l;

    sget v1, Ly4/w;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v4, v2}, Ly4/a;->l(Ljava/lang/String;IIII)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Expected positive parallelism level, but got "

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    sget v4, LA4/k;->d:I

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v3, :cond_2

    new-instance v2, Ly4/i;

    invoke-direct {v2, v0, v1}, Ly4/i;-><init>(LA4/l;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, LA4/d;->d:Lt4/s;

    return-void

    :cond_2
    invoke-static {v1, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v1, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lb4/i;->a:Lb4/i;

    invoke-virtual {p0, v0, p1}, LA4/d;->q(Lb4/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Lb4/h;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, LA4/d;->d:Lt4/s;

    invoke-virtual {v0, p1, p2}, Lt4/s;->q(Lb4/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
