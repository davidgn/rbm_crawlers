.class public final Landroidx/concurrent/futures/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/concurrent/futures/c;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/concurrent/futures/c;

    new-instance v1, LN2/b;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, LN2/b;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/c;->b:Landroidx/concurrent/futures/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/concurrent/futures/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/concurrent/futures/c;->a:Ljava/lang/Throwable;

    return-void
.end method
