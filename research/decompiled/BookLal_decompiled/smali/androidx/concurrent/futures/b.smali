.class public final Landroidx/concurrent/futures/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/concurrent/futures/b;

.field public static final d:Landroidx/concurrent/futures/b;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/CancellationException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroidx/concurrent/futures/i;->GENERATE_CANCELLATION_CAUSES:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Landroidx/concurrent/futures/b;->d:Landroidx/concurrent/futures/b;

    sput-object v1, Landroidx/concurrent/futures/b;->c:Landroidx/concurrent/futures/b;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/concurrent/futures/b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/b;-><init>(ZLjava/util/concurrent/CancellationException;)V

    sput-object v0, Landroidx/concurrent/futures/b;->d:Landroidx/concurrent/futures/b;

    new-instance v0, Landroidx/concurrent/futures/b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/b;-><init>(ZLjava/util/concurrent/CancellationException;)V

    sput-object v0, Landroidx/concurrent/futures/b;->c:Landroidx/concurrent/futures/b;

    :goto_0
    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/concurrent/futures/b;->a:Z

    iput-object p2, p0, Landroidx/concurrent/futures/b;->b:Ljava/util/concurrent/CancellationException;

    return-void
.end method
