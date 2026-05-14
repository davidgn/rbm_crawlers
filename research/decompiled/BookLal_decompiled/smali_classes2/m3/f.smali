.class public final Lm3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ll3/a1;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ll3/a1;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ll3/P1;

.field public final f:Ljavax/net/ssl/SSLSocketFactory;

.field public final l:Ln3/b;

.field public final m:I

.field public final n:Z

.field public final o:Ll3/d;

.field public final p:J

.field public final q:I

.field public final r:I

.field public s:Z


# direct methods
.method public constructor <init>(Ll3/a1;Ll3/a1;Ljavax/net/ssl/SSLSocketFactory;Ln3/b;ZJJIILl3/P1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/f;->a:Ll3/a1;

    invoke-interface {p1}, Ll3/a1;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lm3/f;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lm3/f;->c:Ll3/a1;

    invoke-interface {p2}, Ll3/a1;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lm3/f;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p4, p0, Lm3/f;->l:Ln3/b;

    const/high16 p1, 0x400000

    iput p1, p0, Lm3/f;->m:I

    iput-boolean p5, p0, Lm3/f;->n:Z

    new-instance p1, Ll3/d;

    invoke-direct {p1, p6, p7}, Ll3/d;-><init>(J)V

    iput-object p1, p0, Lm3/f;->o:Ll3/d;

    iput-wide p8, p0, Lm3/f;->p:J

    iput p10, p0, Lm3/f;->q:I

    iput p11, p0, Lm3/f;->r:I

    const-string p1, "transportTracerFactory"

    invoke-static {p12, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p12, p0, Lm3/f;->e:Ll3/P1;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lm3/f;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm3/f;->s:Z

    iget-object v0, p0, Lm3/f;->a:Ll3/a1;

    iget-object v1, p0, Lm3/f;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ll3/a1;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lm3/f;->c:Ll3/a1;

    iget-object v1, p0, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ll3/a1;->q(Ljava/lang/Object;)V

    return-void
.end method
