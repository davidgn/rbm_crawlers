.class public final Lm3/g;
.super Lj3/z;
.source "SourceFile"


# static fields
.field public static final m:Ln3/b;

.field public static final n:J

.field public static final o:Lj1/a;


# instance fields
.field public final b:Ll3/M0;

.field public final c:Ll3/P1;

.field public d:Ll3/a1;

.field public e:Ll3/a1;

.field public f:Ljavax/net/ssl/SSLSocketFactory;

.field public final g:Ln3/b;

.field public h:I

.field public i:J

.field public final j:J

.field public final k:I

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lm3/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, LC4/p;

    sget-object v1, Ln3/b;->e:Ln3/b;

    invoke-direct {v0, v1}, LC4/p;-><init>(Ln3/b;)V

    sget-object v2, Ln3/a;->n:Ln3/a;

    sget-object v3, Ln3/a;->p:Ln3/a;

    sget-object v4, Ln3/a;->o:Ln3/a;

    sget-object v5, Ln3/a;->q:Ln3/a;

    sget-object v6, Ln3/a;->s:Ln3/a;

    sget-object v7, Ln3/a;->r:Ln3/a;

    filled-new-array/range {v2 .. v7}, [Ln3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LC4/p;->d([Ln3/a;)V

    sget-object v1, Ln3/l;->c:Ln3/l;

    filled-new-array {v1}, [Ln3/l;

    move-result-object v1

    invoke-virtual {v0, v1}, LC4/p;->g([Ln3/l;)V

    iget-boolean v1, v0, LC4/p;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, LC4/p;->d:Z

    new-instance v1, Ln3/b;

    invoke-direct {v1, v0}, Ln3/b;-><init>(LC4/p;)V

    sput-object v1, Lm3/g;->m:Ln3/b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lm3/g;->n:J

    new-instance v0, Lz2/e;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    new-instance v1, Lj1/a;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    sput-object v1, Lm3/g;->o:Lj1/a;

    sget-object v0, Lj3/y0;->a:Lj3/y0;

    sget-object v1, Lj3/y0;->b:Lj3/y0;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lj3/z;-><init>(I)V

    sget-object v0, Ll3/R1;->d:Ll3/P1;

    iput-object v0, p0, Lm3/g;->c:Ll3/P1;

    sget-object v0, Lm3/g;->o:Lj1/a;

    iput-object v0, p0, Lm3/g;->d:Ll3/a1;

    sget-object v0, Ll3/b0;->q:Ll3/P1;

    new-instance v1, Lj1/a;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lm3/g;->e:Ll3/a1;

    sget-object v0, Lm3/g;->m:Ln3/b;

    iput-object v0, p0, Lm3/g;->g:Ln3/b;

    const/4 v0, 0x1

    iput v0, p0, Lm3/g;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lm3/g;->i:J

    sget-wide v0, Ll3/b0;->l:J

    iput-wide v0, p0, Lm3/g;->j:J

    const v0, 0xffff

    iput v0, p0, Lm3/g;->k:I

    const v0, 0x7fffffff

    iput v0, p0, Lm3/g;->l:I

    new-instance v0, Ll3/M0;

    new-instance v1, Lj1/a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Li1/D;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Li1/D;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p1, v1, v2}, Ll3/M0;-><init>(Ljava/lang/String;Lj1/a;Li1/D;)V

    iput-object v0, p0, Lm3/g;->b:Ll3/M0;

    return-void
.end method

.method public static forTarget(Ljava/lang/String;)Lm3/g;
    .locals 1

    new-instance v0, Lm3/g;

    invoke-direct {v0, p0}, Lm3/g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lm3/g;->i:J

    sget-wide v2, Ll3/u0;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lm3/g;->i:J

    sget-wide v2, Lm3/g;->n:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lm3/g;->i:J

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lm3/g;->h:I

    return-void
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lm3/g;
    .locals 2

    new-instance v0, Li1/D;

    const-string v1, "scheduledExecutorService"

    invoke-static {p1, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Li1/D;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lm3/g;->e:Ll3/a1;

    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lm3/g;
    .locals 0

    iput-object p1, p0, Lm3/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    const/4 p1, 0x1

    iput p1, p0, Lm3/g;->h:I

    return-object p0
.end method

.method public transportExecutor(Ljava/util/concurrent/Executor;)Lm3/g;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lm3/g;->o:Lj1/a;

    iput-object p1, p0, Lm3/g;->d:Ll3/a1;

    goto :goto_0

    :cond_0
    new-instance v0, Li1/D;

    invoke-direct {v0, p1}, Li1/D;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lm3/g;->d:Ll3/a1;

    :goto_0
    return-object p0
.end method
