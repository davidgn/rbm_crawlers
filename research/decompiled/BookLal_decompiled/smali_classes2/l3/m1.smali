.class public final Ll3/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lj3/w0;

.field public final c:Ll3/y0;

.field public final d:LJ2/j;

.field public e:J

.field public f:Z

.field public g:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ll3/y0;Lj3/w0;Ljava/util/concurrent/ScheduledExecutorService;LJ2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/m1;->c:Ll3/y0;

    iput-object p2, p0, Ll3/m1;->b:Lj3/w0;

    iput-object p3, p0, Ll3/m1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Ll3/m1;->d:LJ2/j;

    invoke-virtual {p4}, LJ2/j;->b()V

    return-void
.end method
