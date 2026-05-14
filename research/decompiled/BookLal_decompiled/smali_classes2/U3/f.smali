.class public abstract LU3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz3/p;

.field public static final b:Lz3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LU3/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LU3/b;-><init>(I)V

    invoke-static {v0}, LL4/l;->h(Ljava/util/concurrent/Callable;)Lz3/p;

    new-instance v0, LU3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU3/b;-><init>(I)V

    invoke-static {v0}, LL4/l;->h(Ljava/util/concurrent/Callable;)Lz3/p;

    move-result-object v0

    sput-object v0, LU3/f;->a:Lz3/p;

    new-instance v0, LU3/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU3/b;-><init>(I)V

    invoke-static {v0}, LL4/l;->h(Ljava/util/concurrent/Callable;)Lz3/p;

    move-result-object v0

    sput-object v0, LU3/f;->b:Lz3/p;

    sget v0, LP3/r;->a:I

    new-instance v0, LU3/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LU3/b;-><init>(I)V

    invoke-static {v0}, LL4/l;->h(Ljava/util/concurrent/Callable;)Lz3/p;

    return-void
.end method
