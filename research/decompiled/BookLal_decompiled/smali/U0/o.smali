.class public final LU0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ2/e;

.field public final b:LL0/b;

.field public final c:LT0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;LL0/b;LJ2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LU0/o;->b:LL0/b;

    iput-object p3, p0, LU0/o;->a:LJ2/e;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object p1

    iput-object p1, p0, LU0/o;->c:LT0/j;

    return-void
.end method
